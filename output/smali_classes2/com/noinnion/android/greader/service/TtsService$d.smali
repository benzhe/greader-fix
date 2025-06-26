.class public final Lcom/noinnion/android/greader/service/TtsService$d;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/service/TtsService;->c(Lkv6;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Lkv6;",
        "Lyj7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/service/TtsService;

.field public final synthetic f:Lkv6;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/service/TtsService;Lkv6;)V
    .locals 0

    iput-object p1, p0, Lcom/noinnion/android/greader/service/TtsService$d;->e:Lcom/noinnion/android/greader/service/TtsService;

    iput-object p2, p0, Lcom/noinnion/android/greader/service/TtsService$d;->f:Lkv6;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Lkv6;

    .line 2
    iget-object v2, v1, Lcom/noinnion/android/greader/service/TtsService$d;->f:Lkv6;

    iget-object v2, v2, Lkv6;->d:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    .line 3
    iget-object v2, v1, Lcom/noinnion/android/greader/service/TtsService$d;->e:Lcom/noinnion/android/greader/service/TtsService;

    iget-object v5, v1, Lcom/noinnion/android/greader/service/TtsService$d;->f:Lkv6;

    iget-object v5, v5, Lkv6;->d:Ljava/lang/String;

    const-string v6, "playListItem.language"

    invoke-static {v5, v6}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljx6;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    .line 4
    iput-object v5, v2, Lcom/noinnion/android/greader/service/TtsService;->r:Ljava/util/Locale;

    .line 5
    sget-object v2, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_2

    .line 6
    iget-object v5, v1, Lcom/noinnion/android/greader/service/TtsService$d;->e:Lcom/noinnion/android/greader/service/TtsService;

    .line 7
    iget-object v5, v5, Lcom/noinnion/android/greader/service/TtsService;->r:Ljava/util/Locale;

    .line 8
    invoke-virtual {v2, v5}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 9
    :cond_2
    iget-object v2, v0, Lkv6;->c:Lap6;

    .line 10
    iget-object v0, v1, Lcom/noinnion/android/greader/service/TtsService$d;->e:Lcom/noinnion/android/greader/service/TtsService;

    iget-object v5, v2, Lap6;->h:Ljava/lang/String;

    const-string v6, "item.title"

    invoke-static {v5, v6}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object v5, v0, Lcom/noinnion/android/greader/service/TtsService;->n:Ljava/lang/String;

    .line 12
    iget-object v0, v1, Lcom/noinnion/android/greader/service/TtsService$d;->e:Lcom/noinnion/android/greader/service/TtsService;

    iget-object v5, v2, Lap6;->h:Ljava/lang/String;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.noinnion.android.greader.reader.action.START_INIT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "ttsTitle"

    .line 15
    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    iget-object v5, v0, Lcom/noinnion/android/greader/service/TtsService;->r:Ljava/util/Locale;

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    invoke-static {v5}, Ljx6;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v7

    :goto_2
    const-string v8, "ttsCurrLanguage"

    invoke-virtual {v6, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-static {v0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lyd;->c(Landroid/content/Intent;)Z

    .line 18
    iget-object v0, v1, Lcom/noinnion/android/greader/service/TtsService$d;->e:Lcom/noinnion/android/greader/service/TtsService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 19
    iget-object v5, v1, Lcom/noinnion/android/greader/service/TtsService$d;->f:Lkv6;

    .line 20
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {v0}, Liw6;->J(Landroid/content/Context;)I

    move-result v6

    .line 22
    invoke-static {v0}, Lcn6;->d0(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 23
    iget-object v0, v2, Lap6;->i:Ljava/lang/String;

    goto :goto_6

    .line 24
    :cond_4
    iget-object v8, v5, Lkv6;->b:Ljava/lang/String;

    if-nez v8, :cond_7

    .line 25
    invoke-static {v0}, Ln56;->H0(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    const/4 v8, 0x2

    if-ne v6, v8, :cond_6

    if-eqz v0, :cond_6

    .line 26
    iget-object v0, v2, Lap6;->k:Ljava/lang/String;

    iput-object v0, v5, Lkv6;->b:Ljava/lang/String;

    goto :goto_5

    .line 27
    :cond_6
    iget-object v0, v2, Lap6;->i:Ljava/lang/String;

    goto :goto_6

    :cond_7
    const-string v6, "cache://"

    .line 28
    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 29
    invoke-static {v0}, Liw6;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v6, v2, Lap6;->f:Ljava/lang/String;

    .line 31
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v6}, Ln56;->E0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/content.html"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 33
    :try_start_0
    invoke-static {v8}, Lhy6;->f(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    :cond_8
    move-object v0, v7

    :goto_4
    if-nez v0, :cond_a

    .line 34
    iget-object v6, v2, Lap6;->k:Ljava/lang/String;

    iput-object v6, v5, Lkv6;->b:Ljava/lang/String;

    goto :goto_6

    :cond_9
    :goto_5
    move-object v0, v7

    .line 35
    :cond_a
    :goto_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v5, Lkv6;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 36
    :try_start_1
    new-instance v0, Lox6$a;

    invoke-direct {v0}, Lox6$a;-><init>()V

    const-string v6, "figure"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Lox6$a;->b(Ljava/util/List;)Lox6$a;

    invoke-virtual {v0}, Lox6$a;->a()Lox6;

    move-result-object v0

    .line 37
    iget-object v5, v5, Lkv6;->b:Ljava/lang/String;

    invoke-static {v5, v0}, Lqx6;->a(Ljava/lang/String;Lox6;)Lrx6;

    move-result-object v0

    .line 38
    iget-object v7, v0, Lrx6;->j:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_b
    move-object v7, v0

    .line 40
    :goto_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 41
    iget-object v7, v2, Lap6;->i:Ljava/lang/String;

    .line 42
    :cond_c
    iget-object v0, v1, Lcom/noinnion/android/greader/service/TtsService$d;->e:Lcom/noinnion/android/greader/service/TtsService;

    .line 43
    iget-boolean v0, v0, Lcom/noinnion/android/greader/service/TtsService;->u:Z

    const-string v5, "#p#"

    if-eqz v0, :cond_d

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lap6;->h:Ljava/lang/String;

    invoke-static {v0, v2, v5, v7}, Ljo;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 45
    :cond_d
    iget-object v0, v1, Lcom/noinnion/android/greader/service/TtsService$d;->e:Lcom/noinnion/android/greader/service/TtsService;

    const-string v2, "text"

    invoke-static {v7, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ""

    .line 46
    iget-object v6, v0, Lcom/noinnion/android/greader/service/TtsService;->o:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const-string v6, "</p>"

    const-string v8, "pattern"

    .line 47
    invoke-static {v6, v8}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const-string v9, "Pattern.compile(pattern)"

    invoke-static {v6, v9}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "nativePattern"

    .line 49
    invoke-static {v6, v10}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "input"

    .line 50
    invoke-static {v7, v11}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "replacement"

    invoke-static {v5, v12}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "nativePattern.matcher(in\u2026).replaceAll(replacement)"

    invoke-static {v6, v7}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x4

    const-string v14, "\n\n"

    .line 52
    invoke-static {v6, v14, v5, v3, v13}, Lco7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    :try_start_2
    const-string v6, "(?i)<head.*?</head>"

    .line 53
    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :catchall_0
    move-object v3, v2

    :goto_8
    const-string v6, "HtmlUtils.stripHead(text)"

    .line 54
    invoke-static {v3, v6}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {v3, v4}, Ln56;->m2(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const-string v6, "HtmlUtils.stripTags(text, true)"

    invoke-static {v3, v6}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {v3}, Lorg/apache/commons/lang3/StringEscapeUtils;->unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "StringEscapeUtils.unescapeHtml4(text)"

    invoke-static {v3, v6}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "&#\\d+;"

    .line 57
    invoke-static {v6, v8}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-static {v6, v9}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {v6, v10}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {v3, v11}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v12}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {v2, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 63
    array-length v3, v2

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v3, :cond_23

    aget-object v6, v2, v5

    const-string v7, "string"

    .line 64
    invoke-static {v6, v7}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_a
    const/16 v10, 0x20

    if-gt v8, v7, :cond_13

    if-nez v9, :cond_e

    move v11, v8

    goto :goto_b

    :cond_e
    move v11, v7

    .line 66
    :goto_b
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 67
    invoke-static {v11, v10}, Lim7;->g(II)I

    move-result v11

    if-gtz v11, :cond_f

    const/4 v11, 0x1

    goto :goto_c

    :cond_f
    const/4 v11, 0x0

    :goto_c
    if-nez v9, :cond_11

    if-nez v11, :cond_10

    const/4 v9, 0x1

    goto :goto_a

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_11
    if-nez v11, :cond_12

    goto :goto_d

    :cond_12
    add-int/lit8 v7, v7, -0x1

    goto :goto_a

    :cond_13
    :goto_d
    add-int/lit8 v7, v7, 0x1

    .line 68
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 69
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 70
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_14

    goto/16 :goto_18

    .line 71
    :cond_14
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "(?<!\\d)[.] |[!|?] | - "

    .line 72
    invoke-static {v6, v8}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 73
    array-length v9, v8

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v9, :cond_1c

    aget-object v12, v8, v11

    const-string v13, "tok"

    .line 74
    invoke-static {v12, v13}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v4

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_f
    if-gt v14, v13, :cond_1a

    if-nez v15, :cond_15

    move v4, v14

    goto :goto_10

    :cond_15
    move v4, v13

    .line 76
    :goto_10
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 77
    invoke-static {v4, v10}, Lim7;->g(II)I

    move-result v4

    if-gtz v4, :cond_16

    const/4 v4, 0x1

    goto :goto_11

    :cond_16
    const/4 v4, 0x0

    :goto_11
    if-nez v15, :cond_18

    if-nez v4, :cond_17

    const/4 v4, 0x1

    const/4 v15, 0x1

    goto :goto_12

    :cond_17
    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    :cond_18
    if-nez v4, :cond_19

    goto :goto_13

    :cond_19
    add-int/lit8 v13, v13, -0x1

    :goto_12
    const/4 v4, 0x1

    goto :goto_f

    :cond_1a
    :goto_13
    add-int/lit8 v13, v13, 0x1

    .line 78
    invoke-virtual {v12, v14, v13}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 79
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 81
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x1

    goto :goto_e

    .line 82
    :cond_1c
    iget-object v4, v0, Lcom/noinnion/android/greader/service/TtsService;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v4, v0, Lcom/noinnion/android/greader/service/TtsService;->o:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_14
    if-gt v8, v7, :cond_22

    if-nez v9, :cond_1d

    move v11, v8

    goto :goto_15

    :cond_1d
    move v11, v7

    .line 85
    :goto_15
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 86
    invoke-static {v11, v10}, Lim7;->g(II)I

    move-result v11

    if-gtz v11, :cond_1e

    const/4 v11, 0x1

    goto :goto_16

    :cond_1e
    const/4 v11, 0x0

    :goto_16
    if-nez v9, :cond_20

    if-nez v11, :cond_1f

    const/4 v9, 0x1

    goto :goto_14

    :cond_1f
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_20
    if-nez v11, :cond_21

    goto :goto_17

    :cond_21
    add-int/lit8 v7, v7, -0x1

    goto :goto_14

    :cond_22
    :goto_17
    add-int/lit8 v7, v7, 0x1

    .line 87
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 88
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_18
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x1

    goto/16 :goto_9

    .line 90
    :cond_23
    iget-object v0, v1, Lcom/noinnion/android/greader/service/TtsService$d;->e:Lcom/noinnion/android/greader/service/TtsService;

    .line 91
    iget-boolean v2, v0, Lcom/noinnion/android/greader/service/TtsService;->e:Z

    if-nez v2, :cond_24

    const/4 v2, 0x1

    .line 92
    iput-boolean v2, v0, Lcom/noinnion/android/greader/service/TtsService;->e:Z

    .line 93
    :cond_24
    iget-boolean v2, v0, Lcom/noinnion/android/greader/service/TtsService;->f:Z

    if-eqz v2, :cond_25

    .line 94
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    goto :goto_19

    :cond_25
    const/4 v2, 0x0

    .line 95
    invoke-virtual {v0, v2, v2}, Lcom/noinnion/android/greader/service/TtsService;->l(II)V

    .line 96
    iget-object v0, v1, Lcom/noinnion/android/greader/service/TtsService$d;->e:Lcom/noinnion/android/greader/service/TtsService;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/service/TtsService;->i()V

    .line 97
    iget-object v0, v1, Lcom/noinnion/android/greader/service/TtsService$d;->e:Lcom/noinnion/android/greader/service/TtsService;

    .line 98
    iget-object v2, v0, Lcom/noinnion/android/greader/service/TtsService;->n:Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v2, v2}, Lcom/noinnion/android/greader/service/TtsService;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_19
    sget-object v0, Lyj7;->a:Lyj7;

    return-object v0
.end method
