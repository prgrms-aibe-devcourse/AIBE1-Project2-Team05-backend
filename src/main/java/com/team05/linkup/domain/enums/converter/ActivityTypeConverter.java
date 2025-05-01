package com.team05.linkup.domain.enums.converter;

import com.team05.linkup.domain.enums.ActivityType;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = true)
public class ActivityTypeConverter implements AttributeConverter<ActivityType, String> {

    @Override
    public String convertToDatabaseColumn(ActivityType attribute) {
        return attribute != null ? attribute.getDisplayName() : null;
    }

    @Override
    public ActivityType convertToEntityAttribute(String dbData) {
        return dbData != null ? ActivityType.fromDisplayName(dbData) : null;
    }
}
