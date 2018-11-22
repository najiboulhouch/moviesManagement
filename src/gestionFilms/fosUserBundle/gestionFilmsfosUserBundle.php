<?php

namespace gestionFilms\fosUserBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class gestionFilmsfosUserBundle extends Bundle
{
    public function getParent()
        {
            return 'FOSUserBundle';
        }
}
