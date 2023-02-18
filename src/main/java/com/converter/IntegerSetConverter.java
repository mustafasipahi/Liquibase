package com.converter;

import org.apache.commons.lang3.StringUtils;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;
import java.util.Arrays;
import java.util.Collections;
import java.util.Set;
import java.util.TreeSet;
import java.util.stream.Collectors;

@Converter
public class IntegerSetConverter implements AttributeConverter<Set<Integer>, String> {

    private static final String SPLIT_CHAR = ",";

    @Override
    public String convertToDatabaseColumn(Set<Integer> integers) {
        if (!(integers instanceof TreeSet)) {
            integers = new TreeSet<>(integers);
        }
        return integers.stream()
                .map(Object::toString)
                .collect(Collectors.joining(SPLIT_CHAR));
    }

    @Override
    public Set<Integer> convertToEntityAttribute(String string) {
        return StringUtils.isNotBlank(string) ? split(string) : Collections.emptySet();
    }

    private Set<Integer> split(String string) {
        return Arrays.stream(string.split(SPLIT_CHAR))
                .map(Integer::parseInt)
                .collect(Collectors.toCollection(TreeSet::new));
    }
}
