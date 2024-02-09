#pragma once
#include <iostream>
#include <map>
#include <string>
#include <SFML/Graphics.hpp>
#include "animation.hpp"
#include <fstream>

class Assets {
    std::map<std::string, sf::Texture> m_textures;
    std::map<std::string, sf::Font> m_fonts;
    // std::map<std::string, sf::Sound> m_sounds;
    std::map<std::string, Animation> m_animations;


    void addTexture(const std::string &name, const std::string &filename);
    void addFont(const std::string &name, const std::string &filename);
    // void addSound(const std::string &name, const std::string &filename);
    // void addAnimation(const std::string &name, const std::string &tex, size_t frameCount, size_t speed);
public:
    Assets();
    ~Assets();

    void loadAssets(const std::string &filename);
    
    const sf::Texture& getTexture(const std::string &name) const;
    const sf::Font& getFont(const std::string &name) const;
    // const sf::Sound& getSound(const std::string &name) const;
    // const Animation& getAnimation(const std::string &name) const;
};