package hr.unizg.fer.sudec.dto;

public class TeamAddMemberDTO {

    private Integer teamId;

    private Integer memberToAdd;

    public Integer getTeamId() {
        return teamId;
    }

    public void setTeamId(Integer teamId) {
        this.teamId = teamId;
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
                "teamId=" + teamId +
                ", memberToAdd=" + memberToAdd +
                '}';
    }
}
