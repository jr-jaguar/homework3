<?php
defined('_JEXEC') or die;
JHtml::_('behavior.framework', true);
$app = JFactory::getApplication();
?>
<?php echo '<?'; ?>xml version="1.0" encoding="<?php echo $this->_charset ?>"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" >
<head>
    <jdoc:include type="head" />
    <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/system.css" type="text/css" />
    <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/general.css" type="text/css" />
    <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/template.css" type="text/css" />
    <?php
    if($this->countModules('left and right') == 0) $contentwidth = "100";
    if($this->countModules('left or right') == 1) $contentwidth = "80";
    if($this->countModules('left and right') == 1) $contentwidth = "60";
    if (JURI::current() != JURI::base()) $body='class="inner"';
    ?>
</head>
<body <?php echo "$body" ?>>
<div id="wrap">
    <div id="header">
        <div id="logo">
            <h1><?php echo $app->getCfg(); ?></h1>
        </div>
        <div>
            <ul class="links">
                <li class="fb"><a href="http://www.facebook.com/pages/GeekHub/158983477520070">facebook</a></li>
                <li class="vk"><a href="http://vkontakte.ru/geekhub">Вконтакте</a></li>
                <li class="tw"><a href="http://twitter.com/#!/geek_hub">twitter</a></li>
                <li class="yb"><a href="http://www.youtube.com/user/GeekHubchannel">youtube</a></li>
            </ul>
        </div>
        <div class="nav">
            <jdoc:include type="modules" name="nav" style="xhtml" />
        </div>
        <span class="line"></span>
        <p class="registration">На жаль, реєстрацію на сезон 2013-2014 зачинено. Чекаємо на Вас у наступному році.</p>
        <img src="images/splash.png" alt="splash" />
    </div><!-- конец блока header -->
    <?php if($this->countModules('user2')) : ?>
        <div id="user2 ">
            <jdoc:include type="modules" name="user2" style="xhtml" />
        </div>
    <?php endif; ?>
    <?php if($this->countModules('header1')) : ?>
        <div id="header1 ">
            <jdoc:include type="modules" name="header1" style="xhtml" />
        </div>
    <?php endif; ?>
    <?php if($this->countModules('user3')) : ?>
        <div id="user3">
            <jdoc:include type="modules" name="user3" style="xhtml" />
        </div>
    <?php endif; ?>
    <?php if($this->countModules('left')) : ?>
        <div id="left">
            <jdoc:include type="modules" name="left" style="xhtml" />
        </div>
    <?php endif; ?>
    <div id="content<?php echo $contentwidth; ?>">
        <jdoc:include type="message" />
        <jdoc:include type="component" style="xhtml" />
    </div> <!--конец блока контента-->
    <?php if($this->countModules('social')) : ?>
        <div id="social">
            <jdoc:include type="modules" name="social" style="..." />
        </div>
    <?php endif; ?>
    <?php if($this->countModules('down')) : ?>
        <div id="down">
            <jdoc:include type="modules" name="down" style="xhtml" />
            <li style="float: right;">© Copyright 2011</li>
        </div>
    <?php endif; ?>
    <?php if($this->countModules('footer')) : ?>
        <div id="footer">
            <jdoc:include type="modules" name="footer" style="xhtml" />
        </div>
    <?php endif; ?>
</div><!--конец блока page-->
</body><!--конец блока body -->
</html><!--конец кода-->