package com.team05.linkup.domain.enums.converter;

import com.team05.linkup.domain.enums.Interest;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = false)
public class InterestConverter implements AttributeConverter<Interest, String> {

    @Override
    public String convertToDatabaseColumn(Interest attribute) {
        return attribute != null ? attribute.getDisplayName() : null;
    }

    @Override
    public Interest convertToEntityAttribute(String dbData) {
        return dbData != null ? Interest.fromDisplayName(dbData) : null;
    }
}
