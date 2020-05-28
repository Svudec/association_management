package hr.unizg.fer.sudec.controller;

import hr.unizg.fer.sudec.dto.ReceiptDTO;
import hr.unizg.fer.sudec.entity.Receipt;
import hr.unizg.fer.sudec.service.GatheringService;
import hr.unizg.fer.sudec.service.ProjectService;
import hr.unizg.fer.sudec.service.ReceiptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/receipt")
public class ReceiptController {

    @Autowired
    private ReceiptService receiptService;

    @Autowired
    private ProjectService projectService;

    @Autowired
    private GatheringService gatheringService;

    @InitBinder
    public void initBinder(WebDataBinder dataBinder){

        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);

        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @GetMapping("/list")
    public String listReceipts(Model model){

        List<Receipt> receipts = receiptService.getReceipts();
        Map<Integer,String> receiptValues = new HashMap<>();
        for (Receipt receipt : receipts){
            receiptValues.put(receipt.getId(), String.format("%12.2f", receipt.getValue()));
        }
        String accountValue = String.format("%,12.2f", receiptService.getAccountValue());

        model.addAttribute("accountValue", accountValue);
        model.addAttribute("receiptValues", receiptValues);
        model.addAttribute("receipts", receipts);

        return "list-receipts";
    }

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model model){

        ReceiptDTO dto = new ReceiptDTO();
        model.addAttribute("receipt", dto);
        model.addAttribute("projects", projectService.getProjects());
        model.addAttribute("gatherings", gatheringService.getGatherings());

        return "receipt-form";
    }

    @PostMapping("/save")
    public String saveReceipt(@Valid @ModelAttribute("receipt") ReceiptDTO dto, BindingResult bindingResult, Model model){

        if(bindingResult.hasErrors()){

            model.addAttribute("projects", projectService.getProjects());
            model.addAttribute("gatherings", gatheringService.getGatherings());

            return "receipt-form";
        }

        receiptService.saveReceipt(dto);

        return "redirect:/receipt/list";
    }
}
