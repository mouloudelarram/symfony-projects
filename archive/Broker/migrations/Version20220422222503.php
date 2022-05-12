<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220422222503 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE image (id INT AUTO_INCREMENT NOT NULL, item_id INT DEFAULT NULL, path VARCHAR(255) NOT NULL, image VARBINARY(255) NOT NULL, INDEX IDX_C53D045F126F525E (item_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE image ADD CONSTRAINT FK_C53D045F126F525E FOREIGN KEY (item_id) REFERENCES item (id)');
        $this->addSql('ALTER TABLE categorie ADD image_id_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE categorie ADD CONSTRAINT FK_497DD63468011AFE FOREIGN KEY (image_id_id) REFERENCES image (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_497DD63468011AFE ON categorie (image_id_id)');
        $this->addSql('ALTER TABLE item ADD author_id_id INT DEFAULT NULL, ADD categorie_id_id INT DEFAULT NULL, ADD created_at DATE NOT NULL, DROP categorie');
        $this->addSql('ALTER TABLE item ADD CONSTRAINT FK_1F1B251E69CCBE9A FOREIGN KEY (author_id_id) REFERENCES `user` (id)');
        $this->addSql('ALTER TABLE item ADD CONSTRAINT FK_1F1B251E8A3C7387 FOREIGN KEY (categorie_id_id) REFERENCES categorie (id)');
        $this->addSql('CREATE INDEX IDX_1F1B251E69CCBE9A ON item (author_id_id)');
        $this->addSql('CREATE INDEX IDX_1F1B251E8A3C7387 ON item (categorie_id_id)');
        $this->addSql('ALTER TABLE user ADD profil_id INT DEFAULT NULL, ADD created_at DATE NOT NULL');
        $this->addSql('ALTER TABLE user ADD CONSTRAINT FK_8D93D649275ED078 FOREIGN KEY (profil_id) REFERENCES image (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_8D93D649275ED078 ON user (profil_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE categorie DROP FOREIGN KEY FK_497DD63468011AFE');
        $this->addSql('ALTER TABLE `user` DROP FOREIGN KEY FK_8D93D649275ED078');
        $this->addSql('DROP TABLE image');
        $this->addSql('DROP INDEX UNIQ_497DD63468011AFE ON categorie');
        $this->addSql('ALTER TABLE categorie DROP image_id_id');
        $this->addSql('ALTER TABLE item DROP FOREIGN KEY FK_1F1B251E69CCBE9A');
        $this->addSql('ALTER TABLE item DROP FOREIGN KEY FK_1F1B251E8A3C7387');
        $this->addSql('DROP INDEX IDX_1F1B251E69CCBE9A ON item');
        $this->addSql('DROP INDEX IDX_1F1B251E8A3C7387 ON item');
        $this->addSql('ALTER TABLE item ADD categorie VARCHAR(255) NOT NULL, DROP author_id_id, DROP categorie_id_id, DROP created_at');
        $this->addSql('DROP INDEX UNIQ_8D93D649275ED078 ON `user`');
        $this->addSql('ALTER TABLE `user` DROP profil_id, DROP created_at');
    }
}
