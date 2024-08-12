#!/bin/bash
echo "### enable rewrite"
a2enmod rewrite
systemctl restart apache2
