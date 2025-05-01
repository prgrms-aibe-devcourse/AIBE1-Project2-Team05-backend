package com.team05.linkup.domain.enums.converter;

import com.team05.linkup.domain.enums.ActivityTime;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = true)
public class ActivityTimeConverter implements AttributeConverter<ActivityTime, String> {

    @Override
    public String convertToDatabaseColumn(ActivityTime attribute) {
        return attribute != null ? attribute.getDisplayName() : null;
    }

    @Override
    public ActivityTime convertToEntityAttribute(String dbData) {
        return dbData != null ? ActivityTime.fromDisplayName(dbData) : null;
    }
}
