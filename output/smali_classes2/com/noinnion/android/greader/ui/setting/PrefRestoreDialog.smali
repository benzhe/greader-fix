.class public Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;
.super Lqw6;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$d;,
        Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$c;
    }
.end annotation


# static fields
.field public static final h:[Ljava/lang/String;


# instance fields
.field public e:Landroid/widget/Button;

.field public f:Ljava/lang/String;

.field public g:Landroid/app/ProgressDialog;

.field public mEmptyView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1020004
    .end annotation
.end field

.field public mListView:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x102000a
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 90

    const-string v0, "sync_auto_update"

    const-string v1, "sync_interval_hours"

    const-string v2, "sync_custom_interval"

    const-string v3, "sync_include_starred"

    const-string v4, "sync_on_start"

    const-string v5, "sync_item_limit"

    const-string v6, "sync_server_reads"

    const-string v7, "offline_usage"

    const-string v8, "offline_feed_items_limit"

    const-string v9, "offline_autoload_cache"

    const-string v10, "offline_autoload_reading_mode"

    const-string v11, "offline_load_full_content"

    const-string v12, "offline_full_content_format"

    const-string v13, "offline_load_images"

    const-string v14, "offline_save_data_traffic"

    const-string v15, "offline_load_audio"

    const-string v16, "offline_load_video"

    const-string v17, "sync_notifiable"

    const-string v18, "sync_notify_sound"

    const-string v19, "sync_notify_sound_ringtone"

    const-string v20, "sync_notify_vibrate"

    const-string v21, "sync_notify_led"

    const-string v22, "sync_notifiable_custom"

    const-string v23, "sync_notify_custom_sound"

    const-string v24, "sync_notify_custom_sound_ringtone"

    const-string v25, "sync_notify_custom_vibrate"

    const-string v26, "sync_notify_custom_led"

    const-string v27, "db_cache_location"

    const-string v28, "cache_offline_location"

    const-string v29, "cache_auto_clean_read"

    const-string v30, "cache_auto_clean_unread"

    const-string v31, "cache_keep_starred"

    const-string v32, "cache_keep_cached"

    const-string v33, "cache_auto_cleanup_images"

    const-string v34, "confirm_mark_as_read_all"

    const-string v35, "confirm_mark_as_read_sub"

    const-string v36, "show_feeds_after_mark_all"

    const-string v37, "feed_sort_type"

    const-string v38, "item_sort_type"

    const-string v39, "item_send_to"

    const-string v40, "item_list_left_action"

    const-string v41, "item_list_right_action"

    const-string v42, "item_list_swipe_action_rtl"

    const-string v43, "item_list_volume_key_action"

    const-string v44, "item_list_mark_read_on_scroll"

    const-string v45, "item_images_loading"

    const-string v46, "item_load_link"

    const-string v47, "item_autoload_link"

    const-string v48, "item_autoload_reading_mode"

    const-string v49, "item_volume_key_action"

    const-string v50, "item_pinch_zoom"

    const-string v51, "item_double_tap_action"

    const-string v52, "item_user_agent"

    const-string v53, "item_image_fit"

    const-string v54, "item_view_inverse"

    const-string v55, "translation_language"

    const-string v56, "application_theme"

    const-string v57, "application_language"

    const-string v58, "item_landscape_dual_pane"

    const-string v59, "home_landscape_dual_pane"

    const-string v60, "home_hide_article_list"

    const-string v61, "use_phone_ui"

    const-string v62, "show_item_list"

    const-string v63, "rich_article_list"

    const-string v64, "rich_show_snippet"

    const-string v65, "rich_show_thumb"

    const-string v66, "item_list_font_size"

    const-string v67, "item_body_font_size"

    const-string v68, "item_share_default"

    const-string v69, "auto_hide_item_controls"

    const-string v70, "show_item_bar"

    const-string v71, "show_navigation_bar"

    const-string v72, "show_zoom_button"

    const-string v73, "item_nav_bar"

    const-string v74, "item_hardware_accelerated"

    const-string v75, "fullscreen"

    const-string v76, "feed_only"

    const-string v77, "item_list_view"

    const-string v78, "view_unread_only"

    const-string v79, "service_comment"

    const-string v80, "service_tts"

    const-string v81, "service_tts_default_locale"

    const-string v82, "service_translate"

    const-string v83, "service_everclip"

    const-string v84, "service_facebook"

    const-string v85, "service_twitter"

    const-string v86, "service_ril"

    const-string v87, "service_instapaper"

    const-string v88, "service_google_mobilizer"

    const-string v89, "service_readability_mobilizer"

    .line 1
    filled-new-array/range {v0 .. v89}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lqw6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->f:Ljava/lang/String;

    return-void
.end method

.method public static d(Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;Ljava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "@"

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    :goto_0
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 3
    new-instance v1, Ljava/io/File;

    sget-object v4, Ldn6;->d:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "File not found"

    if-eqz v4, :cond_16

    .line 5
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 7
    invoke-static {p0}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object p1

    .line 8
    :try_start_0
    invoke-static {v4}, Lhy6;->f(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lgy6;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 10
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 11
    sget-object v1, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->h:[Ljava/lang/String;

    array-length v6, v1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v1, v7

    .line 12
    invoke-static {p0, v8}, Liw6;->X(Landroid/content/Context;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 16
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 17
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_14

    .line 18
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v2, :cond_13

    .line 19
    move-object v5, v1

    check-cast v5, Lorg/w3c/dom/Element;

    .line 20
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "string"

    .line 21
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lgw6; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "name"

    if-eqz v7, :cond_2

    .line 22
    :try_start_1
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-static {p0, v5, v6}, Liw6;->V(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    const-string v7, "boolean"

    .line 25
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lgw6; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "value"

    const-string v10, "true"

    if-eqz v7, :cond_3

    .line 26
    :try_start_2
    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 27
    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {p0, v5, v6}, Liw6;->S(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_3
    const-string v7, "int"

    .line 29
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 30
    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p0, v5, v6}, Liw6;->T(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_4
    const-string v7, "subscription"

    .line 33
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lgw6; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v8, "hidden"

    const-string v9, "sync_excluded"

    const-string v11, "uid"

    if-eqz v7, :cond_d

    .line 34
    :try_start_3
    invoke-interface {v5, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 35
    invoke-static {v6}, Ln56;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v3}, Lip6;->d(Landroid/content/Context;Ljava/lang/String;Z)Lip6;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 36
    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 38
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v6, Lip6;->p:Z

    .line 39
    :cond_5
    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 40
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 41
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v6, Lip6;->q:Z

    :cond_6
    const-string v7, "notification"

    .line 42
    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 43
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 44
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v6, Lip6;->r:Z

    :cond_7
    const-string v7, "image_fit"

    .line 45
    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 46
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 47
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v6, Lip6;->s:Z

    :cond_8
    const-string v7, "offline_content"

    .line 48
    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 49
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 50
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lip6;->u:I

    :cond_9
    const-string v7, "display_content"

    .line 51
    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 52
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 53
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lip6;->v:I

    :cond_a
    const-string v7, "link_format"

    .line 54
    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 55
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 56
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lip6;->w:I

    :cond_b
    const-string v7, "auto_readability"

    .line 57
    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v6, Lip6;->x:I

    .line 60
    :cond_c
    invoke-virtual {p1, v6, v6}, Lep6;->k(Lip6;Lip6;)V

    goto :goto_4

    :cond_d
    const-string v7, "tag"

    .line 61
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 62
    invoke-interface {v5, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 63
    invoke-static {v6}, Ln56;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 64
    invoke-static {p0, v6, v3}, Llp6;->b(Landroid/content/Context;Ljava/lang/String;Z)Llp6;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 65
    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 67
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v7, Llp6;->l:Z

    .line 68
    :cond_e
    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 70
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v7, Llp6;->m:Z

    .line 71
    :cond_f
    iget-object v5, v7, Llp6;->i:Ljava/lang/String;

    iget-boolean v6, v7, Llp6;->l:Z

    iget-boolean v8, v7, Llp6;->m:Z

    invoke-virtual {p1, v7, v5, v6, v8}, Lep6;->l(Llp6;Ljava/lang/String;ZZ)V

    goto :goto_4

    .line 72
    :cond_10
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 73
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 74
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_13

    .line 75
    aget-object v7, v6, v3

    const-string v8, "label"

    .line 76
    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-static {v5}, Ln56;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_11
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_12

    .line 78
    aget-object v5, v6, v2

    .line 79
    :cond_12
    aget-object v6, v6, v2

    .line 80
    invoke-virtual {p1, v5, v7, v6}, Lep6;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_13
    :goto_4
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto/16 :goto_2

    .line 82
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Restored user prefs from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lgw6; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    .line 83
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to restore user prefs from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :goto_6
    return v2

    .line 86
    :cond_15
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_16
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lrb;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1100f9

    invoke-static {p1, v0}, Ln56;->y2(Landroid/app/Activity;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 2
    new-instance p1, Lt75;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lt75;-><init>(Landroid/content/Context;)V

    const v0, 0x7f11034d

    .line 3
    invoke-virtual {p1, v0}, Lt75;->m(I)Lt75;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lt75;->j(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    move-result-object p1

    new-instance v0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$a;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$a;-><init>(Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;)V

    const/high16 v2, 0x1040000

    .line 5
    invoke-virtual {p1, v2, v0}, Lt75;->h(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00bb

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lt75;->n(Landroid/view/View;)La0$a;

    .line 8
    invoke-virtual {p1}, Lt75;->a()La0;

    move-result-object p1

    .line 9
    new-instance v1, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$b;-><init>(Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;La0;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 10
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 11
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 12
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->f:Ljava/lang/String;

    return-void
.end method
