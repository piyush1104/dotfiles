<?php

use PhpCsFixer\Fixer\FixerInterface;
use PhpCsFixer\Tokenizer\Tokens;
use Symfony\Component\Filesystem\Filesystem;

/**
 * Fixer for using prettier-php to fix.
 */
final class PrettierPHPFixer implements FixerInterface
{
    /**
     * {@inheritdoc}
     */
    public function getPriority()
    {
        // Allow prettier to pre-process the code before php-cs-fixer
        return -999;
    }

    /**
     * {@inheritdoc}
     */
    public function isCandidate(Tokens $tokens)
    {
        return true;
    }

    /**
     * {@inheritdoc}
     */
    public function isRisky()
    {
        return false;
    }

    /**
     * {@inheritdoc}
     */
    public function fix(SplFileInfo $file, Tokens $tokens)
    {
        if (
            0 < $tokens->count() &&
            $this->isCandidate($tokens) &&
            $this->supports($file)
        ) {
            $this->applyFix($file, $tokens);
        }
    }

    /**
     * {@inheritdoc}
     */
    public function getName()
    {
        return 'Prettier/php';
    }

    /**
     * {@inheritdoc}
     */
    public function supports(SplFileInfo $file)
    {
        return true;
    }

    /**
     * @param SplFileInfo $file
     * @param Tokens      $tokens
     */
    private function applyFix(SplFileInfo $file, Tokens $tokens): void
    {
        // exec("yarn exec -- prettier $file", $prettierOutput);
        exec("yarn exec -- prettier $file", $prettierOutput);
        // system("echo $file > /Users/piyushbansal/api/api-network-feedback/test2.txt");
        // system("echo $file > /Users/piyushbansal/api/api-network-feedback/test3.txt");
        // exec("npx prettier /Users/piyushbansal/api/api-network-feedback/app/Console/Kernel.php", $prettierOutput);
        $code = implode(PHP_EOL, $prettierOutput);
        // system("echo $code > /Users/piyushbansal/api/api-network-feedback/test3.txt");
        // $tokens->setCode($code);
        // $output='fdas';
        // $retval='hi';
        // exec("whoami", $output);
        // $output = implode(PHP_EOL, $output);
        // exec("echo whoami", $output);
        // dd($output);
        // exec("echo $output >> /Users/piyushbansal/api/api-network-feedback/test3.txt");
        // system("echo $output[0] >> /Users/piyushbansal/api/api-network-feedback/test3.txt");
    }
}
