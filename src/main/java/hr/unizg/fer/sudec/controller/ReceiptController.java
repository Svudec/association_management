package hr.unizg.fer.sudec.controller;

import hr.unizg.fer.sudec.dto.ReceiptDTO;
import hr.unizg.fer.sudec.entity.Receipt;
import hr.unizg.fer.sudec.service.GatheringService;
import hr.unizg.fer.sudec.service.ProjectService;
import hr.unizg.fer.sudec.service.ReceiptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/receipt")
public class ReceiptController {

    @Autowired
    private ReceiptService receiptService;

    @Autowired
    private ProjectService projectService;

    @Autowired
    private GatheringService gatheringService;

    @GetMapping("/list")
    public String listReceipts(Model model){

        List<Receipt> receipts = receiptService.getReceipts();
        model.addAttribute("receipts", receipts);
        model.addAttribute("receiptService", receiptService);

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
    public String saveReceipt(@ModelAttribute("receipt") ReceiptDTO dto){

        receiptService.saveReceipt(dto);

        return "redirect:/receipt/list";
    }
}
