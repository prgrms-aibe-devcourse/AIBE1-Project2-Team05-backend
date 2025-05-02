package com.team05.linkup.common.dto;


public record UserPrincipal(String providerId, String provider) {

    @Override
    public String toString() {
        return providerId;
    }
}