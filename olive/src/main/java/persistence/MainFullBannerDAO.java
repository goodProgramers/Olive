package persistence;

import domain.MainFullBannerDTO;

import java.sql.Connection;
import java.util.List;

public interface MainFullBannerDAO {
    List<MainFullBannerDTO> selectMainFullBanner(Connection connection);
}
