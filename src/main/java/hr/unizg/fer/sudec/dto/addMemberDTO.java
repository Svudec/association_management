package hr.unizg.fer.sudec.dto;

public class addMemberDTO {

    private Integer id;

    private Integer memberToAdd;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMemberToAdd() {
        return memberToAdd;
    }

    public void setMemberToAdd(Integer memberToAdd) {
        this.memberToAdd = memberToAdd;
    }

    @Override
    public String toString() {
        return "TeamAddMemberDTO{" +
                "teamId=" + id +
                ", memberToAdd=" + memberToAdd +
                '}';
    }
}
