package com.team05.linkup.domain.mentoring.dto;

import com.team05.linkup.domain.enums.ActivityTime;
import com.team05.linkup.domain.enums.ActivityType;
import com.team05.linkup.domain.enums.Interest;
import lombok.Builder;
import lombok.Getter;

import java.time.ZonedDateTime;

@Getter
@Builder
public class MatchedMentorProfileDto {
    private String sessionId;
    private String status;
    private ZonedDateTime createdAt;
    private MentorDto mentor;

    @Getter
    @Builder
    public static class MentorDto {
        private String mentorId;
        private String nickname;
        private String profileImageUrl;
        private String introduction;
        private String interest;
        private String activityTime;
        private String activityType;
        private String contactLink;
    }
}
