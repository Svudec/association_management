package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Country;

import java.util.List;

public interface CountryDAO {

    List<Country> getCountries();

    Country getCountry(int countryId);
}
