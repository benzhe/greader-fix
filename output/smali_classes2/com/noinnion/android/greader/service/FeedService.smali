.class public Lcom/noinnion/android/greader/service/FeedService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/service/FeedService$d;,
        Lcom/noinnion/android/greader/service/FeedService$c;
    }
.end annotation


# static fields
.field public static y:Lcom/noinnion/android/greader/service/FeedService;


# instance fields
.field public final e:Landroid/content/BroadcastReceiver;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/noinnion/android/greader/service/FeedService$c;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lfw6;

.field public final h:[Ljava/lang/String;

.field public i:J

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Lix6;

.field public t:Lhx6;

.field public u:[Lcom/noinnion/android/greader/service/FeedService$d;

.field public v:Landroid/app/NotificationManager;

.field public w:Lm7;

.field public final x:Lnp6$a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/noinnion/android/greader/service/FeedService$a;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/service/FeedService$a;-><init>(Lcom/noinnion/android/greader/service/FeedService;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/service/FeedService;->e:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/noinnion/android/greader/service/FeedService;->g:Lfw6;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    .line 4
    iput-object v2, p0, Lcom/noinnion/android/greader/service/FeedService;->h:[Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 5
    iput-wide v2, p0, Lcom/noinnion/android/greader/service/FeedService;->i:J

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lcom/noinnion/android/greader/service/FeedService;->j:I

    .line 7
    iput v2, p0, Lcom/noinnion/android/greader/service/FeedService;->k:I

    .line 8
    iput v2, p0, Lcom/noinnion/android/greader/service/FeedService;->l:I

    .line 9
    iput-boolean v2, p0, Lcom/noinnion/android/greader/service/FeedService;->m:Z

    .line 10
    iput-boolean v2, p0, Lcom/noinnion/android/greader/service/FeedService;->p:Z

    const/4 v2, 0x1

    .line 11
    iput-boolean v2, p0, Lcom/noinnion/android/greader/service/FeedService;->q:Z

    .line 12
    iput-object v0, p0, Lcom/noinnion/android/greader/service/FeedService;->r:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/noinnion/android/greader/service/FeedService;->s:Lix6;

    new-array v1, v1, [Lcom/noinnion/android/greader/service/FeedService$d;

    .line 14
    iput-object v1, p0, Lcom/noinnion/android/greader/service/FeedService;->u:[Lcom/noinnion/android/greader/service/FeedService$d;

    .line 15
    iput-object v0, p0, Lcom/noinnion/android/greader/service/FeedService;->w:Lm7;

    .line 16
    new-instance v0, Lcom/noinnion/android/greader/service/FeedService$b;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/service/FeedService$b;-><init>(Lcom/noinnion/android/greader/service/FeedService;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/service/FeedService;->x:Lnp6$a;

    return-void
.end method

.method public static a(Lcom/noinnion/android/greader/service/FeedService;Lap6;I)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v1, v7, Lap6;->s:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto/16 :goto_18

    .line 3
    :cond_0
    iget-boolean v1, v0, Lcom/noinnion/android/greader/service/FeedService;->p:Z

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 5
    iget-wide v3, v7, Lap6;->g:J

    invoke-static {v8, v3, v4, v2}, Lon6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    .line 6
    iget v6, v3, Lip6;->u:I

    if-eqz v6, :cond_1

    if-ne v6, v4, :cond_2

    :cond_1
    move/from16 v6, p2

    .line 7
    :cond_2
    iget v3, v3, Lip6;->y:I

    if-eq v3, v4, :cond_4

    if-ne v3, v5, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    move v9, v6

    goto :goto_1

    :cond_5
    move/from16 v9, p2

    :goto_1
    if-eqz v9, :cond_29

    .line 8
    iget-object v3, v0, Lcom/noinnion/android/greader/service/FeedService;->r:Ljava/lang/String;

    iget-object v6, v7, Lap6;->f:Ljava/lang/String;

    invoke-static {v3, v6}, Ln56;->E0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_28

    .line 11
    iget-object v3, v0, Lcom/noinnion/android/greader/service/FeedService;->s:Lix6;

    if-nez v3, :cond_6

    .line 12
    new-instance v3, Lix6;

    invoke-static {v8}, Lon6;->h(Landroid/content/Context;)Lkw6;

    move-result-object v6

    iget-boolean v10, v0, Lcom/noinnion/android/greader/service/FeedService;->q:Z

    const-string v11, "/gReader/.css/"

    const-string v12, "../../.css/"

    invoke-direct {v3, v6, v10, v11, v12}, Lix6;-><init>(Lkw6;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/noinnion/android/greader/service/FeedService;->s:Lix6;

    .line 13
    :cond_6
    iget-object v3, v0, Lcom/noinnion/android/greader/service/FeedService;->s:Lix6;

    const-string v6, "com.noinnion.android.greader.reader.imageloader"

    .line 14
    iget-object v10, v7, Lap6;->k:Ljava/lang/String;

    if-eqz v10, :cond_27

    const-string v11, "#"

    .line 15
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-le v11, v4, :cond_7

    .line 16
    invoke-virtual {v10, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :cond_7
    move-object v12, v10

    const/4 v2, 0x3

    const/4 v4, 0x4

    if-eq v9, v2, :cond_8

    if-eq v9, v4, :cond_8

    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    const/4 v2, 0x1

    .line 17
    :goto_2
    iget-object v4, v3, Lix6;->c:Ljava/lang/String;

    if-eqz v4, :cond_26

    .line 18
    iget-object v4, v3, Lix6;->d:Ljava/lang/String;

    if-eqz v4, :cond_26

    if-eqz v1, :cond_9

    const-string v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    goto :goto_3

    :cond_9
    const-string v1, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    :goto_3
    move-object v14, v1

    .line 19
    new-instance v1, Lsy6;

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x8

    move-object v11, v1

    .line 20
    invoke-direct/range {v11 .. v16}, Lsy6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/OkHttpClient;I)V

    .line 21
    iget-object v4, v7, Lap6;->f:Ljava/lang/String;

    const-string v10, "/gReader/cache/"

    .line 22
    invoke-static {v10}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 23
    iget-object v10, v0, Lcom/noinnion/android/greader/service/FeedService;->r:Ljava/lang/String;

    .line 24
    iget-object v11, v0, Lcom/noinnion/android/greader/service/FeedService;->t:Lhx6;

    if-nez v11, :cond_a

    .line 25
    new-instance v11, Lhx6;

    invoke-direct {v11}, Lhx6;-><init>()V

    iput-object v11, v0, Lcom/noinnion/android/greader/service/FeedService;->t:Lhx6;

    .line 26
    :cond_a
    iget-object v11, v0, Lcom/noinnion/android/greader/service/FeedService;->t:Lhx6;

    const-string v12, "FeedDownloaderHelper.MemoryCache"

    .line 27
    iget-object v13, v1, Lsy6;->c:Ljava/lang/String;

    .line 28
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    if-ne v2, v5, :cond_c

    .line 29
    :try_start_0
    invoke-virtual {v1}, Lsy6;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v15, Lox6$a;

    invoke-direct {v15}, Lox6$a;-><init>()V

    invoke-virtual {v15, v14}, Lox6$a;->b(Ljava/util/List;)Lox6$a;

    invoke-virtual {v15}, Lox6$a;->a()Lox6;

    move-result-object v14

    .line 31
    invoke-static {v0, v13, v14}, Lqx6;->b(Ljava/lang/String;Ljava/lang/String;Lox6;)Lrx6;

    move-result-object v0

    .line 32
    iget-object v13, v0, Lrx6;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_4
    if-eqz v13, :cond_25

    .line 34
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_16

    :cond_d
    const/4 v0, 0x2

    if-eq v9, v5, :cond_f

    if-ne v9, v0, :cond_e

    goto :goto_5

    :cond_e
    move-object/from16 p2, v6

    move-object/from16 v16, v8

    goto/16 :goto_9

    :cond_f
    :goto_5
    const-string v14, "<link [^>]*?href=[\"\']([^>]*?)[\"\'][^>]*?>"

    .line 35
    invoke-static {v14, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    :goto_6
    if-eqz v14, :cond_13

    const/4 v14, 0x0

    .line 38
    :try_start_1
    invoke-virtual {v0, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_11

    const-string v15, "stylesheet"

    .line 39
    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_11

    const-string v15, "print"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_11

    .line 40
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {v1}, Lsy6;->a()Ljava/net/URL;

    move-result-object v14

    invoke-static {v14, v5}, Ln56;->P0(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 42
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 p2, v6

    .line 43
    :try_start_2
    new-instance v6, Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v16, v8

    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v7, v3, Lix6;->c:Ljava/lang/String;

    .line 45
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v7, v3, Lix6;->c:Ljava/lang/String;

    .line 48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 49
    new-instance v7, Ljava/util/HashSet;

    const-string v8, "text/"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 50
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v14, v7}, Lhy6;->e(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 51
    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    iget-object v7, v3, Lix6;->d:Ljava/lang/String;

    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v13, v5

    goto :goto_7

    :catch_1
    :cond_11
    move-object/from16 p2, v6

    :catch_2
    move-object/from16 v16, v8

    .line 54
    :catch_3
    :cond_12
    :goto_7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    const/4 v5, 0x1

    move-object/from16 v7, p1

    move-object/from16 v6, p2

    move-object/from16 v8, v16

    goto/16 :goto_6

    :cond_13
    move-object/from16 p2, v6

    move-object/from16 v16, v8

    const-string v0, "<meta[^>]*?charset=([^>]*?)\"[^>]*?>|<meta[^>]*?http-equiv=\"refresh\"[^>]*?/?>|<base[^>]*?>|<noscript.*?>(.|\n)*?</noscript>"

    const/4 v5, 0x2

    .line 55
    invoke-static {v0, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    :goto_8
    const/4 v6, 0x0

    if-eqz v5, :cond_14

    .line 58
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v13, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 59
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    goto :goto_8

    .line 60
    :cond_14
    :goto_9
    invoke-static {v10, v4}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x2

    if-eq v9, v0, :cond_1e

    const/4 v4, 0x4

    if-eq v9, v4, :cond_1e

    .line 61
    iget-boolean v4, v3, Lix6;->b:Z

    if-eqz v4, :cond_15

    const-string v4, "<img [^>]*?src=[\"\'](([^>]*?[\\.](jpeg|jpg|png|gif))[^>]*?)[\"\']"

    goto :goto_a

    :cond_15
    const-string v4, "<img [^>]*?src=[\"\']([^>]*?)[\"\']"

    .line 62
    :goto_a
    invoke-static {v4, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 64
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v5, 0x0

    :goto_b
    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    add-int/2addr v5, v0

    .line 65
    :try_start_4
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "\""

    .line 66
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "\'"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 67
    invoke-virtual {v1}, Lsy6;->a()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, v6}, Ln56;->P0(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 68
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/img_"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 70
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 71
    :try_start_5
    iget-object v0, v11, Lhx6;->a:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_c

    .line 72
    :cond_16
    new-instance v0, Ljava/io/File;

    iget-object v15, v11, Lhx6;->a:Ljava/util/Map;

    invoke-interface {v15, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v15
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    if-eqz v15, :cond_17

    goto :goto_d

    :catch_4
    move-exception v0

    .line 74
    :try_start_6
    invoke-static {v12, v0}, Ln56;->y1(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_17
    :goto_c
    const/4 v0, 0x0

    :goto_d
    const-string v15, "img_"

    if-eqz v0, :cond_18

    .line 75
    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_18

    .line 76
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v8}, Lhy6;->b(Ljava/io/File;Ljava/io/File;)V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    goto :goto_10

    .line 78
    :cond_18
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-object/from16 v17, v1

    .line 79
    :try_start_8
    new-instance v1, Ljava/util/HashSet;

    const-string v18, "image/"

    filled-new-array/range {v18 .. v18}, [Ljava/lang/String;

    move-result-object v18
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-object/from16 p0, v7

    :try_start_9
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 80
    invoke-static {v0, v8, v1}, Lhy6;->e(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    if-eqz v0, :cond_1c

    .line 81
    :try_start_a
    iget-object v0, v11, Lhx6;->a:Ljava/util/Map;

    invoke-interface {v0, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, v11, Lhx6;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1a

    .line 83
    iget-object v0, v11, Lhx6;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x1f4

    const/4 v7, 0x0

    .line 84
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    add-int/lit8 v7, v7, 0x1

    if-le v7, v1, :cond_19

    goto :goto_e

    :catchall_0
    move-exception v0

    .line 87
    :try_start_b
    invoke-static {v12, v0}, Ln56;->y1(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    :cond_1a
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_11

    :catch_5
    :goto_f
    move-object/from16 p0, v7

    goto :goto_11

    :catch_6
    :cond_1b
    :goto_10
    move-object/from16 v17, v1

    goto :goto_f

    .line 89
    :catch_7
    :cond_1c
    :goto_11
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    move-object/from16 v7, p0

    move-object/from16 v1, v17

    goto/16 :goto_b

    :cond_1d
    move-object/from16 p0, v7

    const-string v0, "data-src=\"img"

    .line 90
    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "data-src="

    const-string v1, "src="

    .line 91
    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_12

    :cond_1e
    move-object/from16 p0, v7

    :cond_1f
    :goto_12
    const/4 v0, 0x3

    if-eq v9, v0, :cond_21

    const/4 v0, 0x4

    if-ne v9, v0, :cond_20

    goto :goto_13

    :cond_20
    move-object/from16 v7, p1

    goto/16 :goto_15

    :cond_21
    :goto_13
    const/4 v0, 0x2

    if-ne v2, v0, :cond_23

    const-string v0, "</a></div><div>"

    .line 92
    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_22

    add-int/lit8 v0, v0, 0xf

    const-string v2, "</div><div style=\'margin-left:"

    .line 93
    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v1, :cond_20

    if-le v2, v0, :cond_20

    add-int/lit8 v2, v2, -0x1

    .line 94
    invoke-virtual {v13, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, p1

    .line 95
    iput-object v0, v7, Lap6;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 96
    iput-object v0, v7, Lap6;->l:Ljava/lang/String;

    .line 97
    iget-object v4, v3, Lix6;->a:Lkw6;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static/range {v0 .. v6}, Ln56;->H(Landroid/content/Context;Ljava/lang/String;Low6;Lpw6;Lkw6;IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_22
    move-object/from16 v7, p1

    const-string v0, "<body"

    .line 98
    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "The content of the requested article could not be retrieved. There are several reasons for the issue: <ol><li>Check the availability of the article website.</li><li>Some websites could not be simplified.</li><li>Instapaper mobilizer has a limit for its service. If it is reached Google mobilizer will be used instead. Some websites could not be retrieved by Google mobilizer.</li></ol> Try to change Offline format of the specific feed to Normal page. If it does not help try <a href=\"http://noinnion.com/greader/faq\">FAQ</a> or contact us."

    .line 99
    iput-object v0, v7, Lap6;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 100
    iput-object v0, v7, Lap6;->l:Ljava/lang/String;

    .line 101
    iget-object v4, v3, Lix6;->a:Lkw6;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static/range {v0 .. v6}, Ln56;->H(Landroid/content/Context;Ljava/lang/String;Low6;Lpw6;Lkw6;IZ)Ljava/lang/String;

    move-result-object v0

    :goto_14
    move-object v13, v0

    goto :goto_15

    :cond_23
    move-object/from16 v7, p1

    const/4 v0, 0x1

    if-ne v2, v0, :cond_24

    .line 102
    iput-object v13, v7, Lap6;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 103
    iput-object v0, v7, Lap6;->l:Ljava/lang/String;

    .line 104
    iget-object v4, v3, Lix6;->a:Lkw6;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static/range {v0 .. v6}, Ln56;->H(Landroid/content/Context;Ljava/lang/String;Low6;Lpw6;Lkw6;IZ)Ljava/lang/String;

    move-result-object v13

    :cond_24
    :goto_15
    const-string v0, "content.html"

    move-object/from16 v1, p0

    .line 105
    invoke-static {v1, v0, v13}, Lhy6;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_17

    :cond_25
    :goto_16
    move-object/from16 v16, v8

    const/4 v3, 0x0

    goto :goto_17

    .line 106
    :cond_26
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no valid css path"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_27
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid url"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    move-object/from16 v16, v8

    :goto_17
    if-eqz v3, :cond_29

    .line 108
    invoke-static/range {v16 .. v16}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v0

    iget-wide v1, v7, Lap6;->e:J

    invoke-virtual {v0, v1, v2, v9}, Lep6;->h(JI)Z

    move v2, v9

    goto :goto_18

    :cond_29
    const/4 v2, 0x0

    :goto_18
    return v2
.end method

.method public static b(Lcom/noinnion/android/greader/service/FeedService;Lap6;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "/gReader/.image-cache/"

    const-string v3, "image/"

    .line 2
    invoke-virtual/range {p1 .. p1}, Lap6;->n()Ljava/lang/String;

    move-result-object v10

    .line 3
    iget-boolean v4, v0, Lcom/noinnion/android/greader/service/FeedService;->q:Z

    if-eqz v4, :cond_0

    const-string v4, "<img [^>]*?src=[\"\']((.*?[\\.](jpeg|jpg|png|gif)).*?)[\"\']"

    goto :goto_0

    :cond_0
    const-string v4, "<img [^>]*?src=[\"\'](.*?)[\"\']"

    :goto_0
    const/4 v11, 0x2

    .line 4
    invoke-static {v4, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 5
    iget-object v5, v1, Lap6;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 6
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    const/4 v9, 0x1

    if-eqz v4, :cond_4

    .line 7
    :try_start_0
    invoke-virtual {v12, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-le v5, v9, :cond_1

    .line 9
    invoke-virtual {v12, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    move-object v5, v4

    .line 10
    :goto_2
    sget v6, Liy6;->a:I

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 12
    new-instance v7, Ljava/util/HashSet;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 13
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/noinnion/android/greader/service/FeedService;->r:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v8, Ljava/util/HashSet;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 15
    invoke-static {v7, v4, v8}, Lhy6;->e(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 16
    iget-object v7, v1, Lap6;->i:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://com.noinnion.android.greader.reader.localfile/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lap6;->i:Ljava/lang/String;

    const/4 v15, 0x1

    :cond_2
    if-eqz v10, :cond_3

    .line 17
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 18
    invoke-static {}, Lhz6;->j()Lhz6;

    move-result-object v4

    .line 19
    invoke-virtual {v4}, Lhz6;->i()Lty6;

    move-result-object v7

    invoke-interface {v7, v5}, Lty6;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 20
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/noinnion/android/greader/service/FeedService;->r:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_3

    .line 21
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v5, v10

    const/4 v11, 0x1

    .line 22
    invoke-virtual/range {v4 .. v9}, Lhz6;->m(Ljava/lang/String;Luz6;Lgz6;Ll07;Lk07;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v14, 0x1

    .line 23
    :catch_0
    :cond_3
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v11, 0x2

    goto/16 :goto_1

    :cond_4
    const/4 v11, 0x1

    if-eqz v10, :cond_5

    if-nez v14, :cond_5

    .line 24
    invoke-static {}, Lhz6;->j()Lhz6;

    move-result-object v4

    .line 25
    invoke-virtual {v4}, Lhz6;->i()Lty6;

    move-result-object v2

    invoke-interface {v2, v10}, Lty6;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v5, v10

    .line 26
    invoke-virtual/range {v4 .. v9}, Lhz6;->m(Ljava/lang/String;Luz6;Lgz6;Ll07;Lk07;)V

    :cond_5
    if-eqz v15, :cond_7

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v0, "_id = ?"

    new-array v9, v11, [Ljava/lang/String;

    .line 29
    iget-wide v2, v1, Lap6;->e:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v13

    .line 30
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 31
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "content"

    .line 32
    iget-object v1, v1, Lap6;->i:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, ""

    :cond_6
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v1, Lap6;->B:Landroid/net/Uri;

    invoke-virtual {v8, v1, v2, v0, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 34
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v8

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v8

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_3

    :catchall_0
    move-exception v0

    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v8

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 36
    throw v0

    :cond_7
    :goto_3
    return-void
.end method

.method public static c(Lcom/noinnion/android/greader/service/FeedService;Lap6;)V
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lap6;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lap6;->j()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcp6;

    .line 5
    :try_start_0
    iget-object v2, v1, Lcp6;->a:Ljava/lang/String;

    iget-object v3, p1, Lap6;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Ln56;->I0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcp6;->a:Ljava/lang/String;

    iget-object v1, v1, Lcp6;->b:Ljava/lang/String;

    invoke-static {v3, v4, v2, v1}, Ln56;->r0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static d(Lcom/noinnion/android/greader/service/FeedService;Lap6;)V
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lap6;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lap6;->o()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcp6;

    .line 5
    :try_start_0
    iget-object v2, v1, Lcp6;->a:Ljava/lang/String;

    iget-object v3, p1, Lap6;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Ln56;->I0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcp6;->a:Ljava/lang/String;

    iget-object v1, v1, Lcp6;->b:Ljava/lang/String;

    invoke-static {v3, v4, v2, v1}, Ln56;->r0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static e(Lcom/noinnion/android/greader/service/FeedService;JI)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.noinnion.android.greader.reader.action.DOWNLOADING_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "itemId"

    .line 3
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "content_format"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-static {p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object p0

    invoke-virtual {p0, v0}, Lyd;->c(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized f(Ljava/lang/String;Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "&"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    .line 2
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 5
    iget-object v3, p0, Lcom/noinnion/android/greader/service/FeedService;->f:Ljava/util/List;

    new-instance v4, Lcom/noinnion/android/greader/service/FeedService$c;

    invoke-direct {v4, p0, v2, p2}, Lcom/noinnion/android/greader/service/FeedService$c;-><init>(Lcom/noinnion/android/greader/service/FeedService;Ljava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget p2, p0, Lcom/noinnion/android/greader/service/FeedService;->l:I

    array-length p1, p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/noinnion/android/greader/service/FeedService;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g()Landroid/app/NotificationManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/FeedService;->v:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/noinnion/android/greader/service/FeedService;->v:Landroid/app/NotificationManager;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/service/FeedService;->v:Landroid/app/NotificationManager;

    return-object v0
.end method

.method public h()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/noinnion/android/greader/service/FeedService;->l:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v1, p0, Lcom/noinnion/android/greader/service/FeedService;->j:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public final i(I)Lcom/noinnion/android/greader/service/FeedService$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/FeedService;->u:[Lcom/noinnion/android/greader/service/FeedService$d;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/noinnion/android/greader/service/FeedService$d;

    invoke-direct {v0, p0, p1}, Lcom/noinnion/android/greader/service/FeedService$d;-><init>(Lcom/noinnion/android/greader/service/FeedService;I)V

    goto :goto_0

    .line 3
    :cond_0
    iput p1, v0, Lcom/noinnion/android/greader/service/FeedService$d;->a:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, v0, Lcom/noinnion/android/greader/service/FeedService$d;->b:Z

    :goto_0
    return-object v0
.end method

.method public final j()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/service/FeedService;->g()Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x7f09021b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public declared-synchronized k(ILjava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/noinnion/android/greader/service/FeedService;->h:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/noinnion/android/greader/service/FeedService;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final l(I)V
    .locals 10

    const v0, 0x7f1100c1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/noinnion/android/greader/service/FeedService;->w:Lm7;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const v2, 0x1080081

    const v5, 0x7f11001d

    .line 3
    invoke-virtual {p0, v5}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 5
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-static {p0, v4, v8, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v9, "feed_service_v2"

    invoke-static {p0, v9, v0}, Lvx6;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v9, Lm7;

    invoke-direct {v9, p0, v0}, Lm7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/noinnion/android/greader/service/FeedService;->w:Lm7;

    .line 9
    invoke-virtual {v9, v5}, Lm7;->e(Ljava/lang/CharSequence;)Lm7;

    invoke-virtual {v9, v1}, Lm7;->j(Ljava/lang/CharSequence;)Lm7;

    .line 10
    iget-object v0, v9, Lm7;->s:Landroid/app/Notification;

    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 11
    iput-wide v6, v0, Landroid/app/Notification;->when:J

    .line 12
    iput-object v8, v9, Lm7;->f:Landroid/app/PendingIntent;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/noinnion/android/greader/service/FeedService;->w:Lm7;

    const/16 v5, 0x64

    .line 14
    iput v5, v2, Lm7;->k:I

    .line 15
    iput p1, v2, Lm7;->l:I

    .line 16
    iput-boolean v4, v2, Lm7;->m:Z

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ... ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/noinnion/android/greader/service/FeedService;->j:I

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/noinnion/android/greader/service/FeedService;->l:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lm7;->d(Ljava/lang/CharSequence;)Lm7;

    .line 18
    iget-object p1, p0, Lcom/noinnion/android/greader/service/FeedService;->w:Lm7;

    invoke-virtual {p1}, Lm7;->b()Landroid/app/Notification;

    move-result-object p1

    const v1, 0x7f09021b

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p0, v1, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/noinnion/android/greader/service/FeedService;->g()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/service/FeedService;->x:Lnp6$a;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sput-object p0, Lcom/noinnion/android/greader/service/FeedService;->y:Lcom/noinnion/android/greader/service/FeedService;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/service/FeedService;->f:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/noinnion/android/greader/service/FeedService;->h:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const-string v2, ""

    .line 5
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.noinnion.android.greader.reader.action.START_START_DOWNLOADING"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v1

    iget-object v2, p0, Lcom/noinnion/android/greader/service/FeedService;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lyd;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/noinnion/android/greader/service/FeedService;->y:Lcom/noinnion/android/greader/service/FeedService;

    .line 2
    invoke-static {p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v0

    iget-object v1, p0, Lcom/noinnion/android/greader/service/FeedService;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lyd;->d(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/service/FeedService;->t:Lhx6;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    iget-object v0, v0, Lhx6;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FeedDownloaderHelper.MemoryCache"

    .line 6
    invoke-static {v1, v0}, Ln56;->y1(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/noinnion/android/greader/service/FeedService;->j()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_0
    const-string p2, "item_ids"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    const-string v0, "save_page"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/noinnion/android/greader/service/FeedService;->f(Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/noinnion/android/greader/service/FeedService;->g:Lfw6;

    if-nez p2, :cond_1

    .line 8
    invoke-static {p1}, Lfw6;->a(Landroid/content/Context;)Lfw6;

    move-result-object p2

    iput-object p2, p0, Lcom/noinnion/android/greader/service/FeedService;->g:Lfw6;

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/noinnion/android/greader/service/FeedService;->g:Lfw6;

    const-string v0, "offline_full_content_format"

    .line 10
    invoke-static {p1, v0}, Liw6;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    .line 13
    :goto_0
    iput v0, p0, Lcom/noinnion/android/greader/service/FeedService;->o:I

    .line 14
    iget-boolean p2, p2, Lfw6;->a:Z

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/noinnion/android/greader/service/FeedService;->n:I

    .line 15
    sget p2, Lcn6;->b:I

    const-string p2, "item_user_agent"

    .line 16
    invoke-static {p1, p2}, Liw6;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 18
    :goto_2
    iput-boolean p2, p0, Lcom/noinnion/android/greader/service/FeedService;->p:Z

    const-string p2, "offline_save_data_traffic"

    .line 19
    invoke-static {p1, p2, v0}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    .line 20
    iput-boolean p2, p0, Lcom/noinnion/android/greader/service/FeedService;->q:Z

    .line 21
    invoke-static {p1}, Liw6;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/noinnion/android/greader/service/FeedService;->r:Ljava/lang/String;

    if-nez p1, :cond_5

    .line 22
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/noinnion/android/greader/service/FeedService;->r:Ljava/lang/String;

    .line 23
    :cond_5
    invoke-virtual {p0, v1}, Lcom/noinnion/android/greader/service/FeedService;->l(I)V

    .line 24
    iget p1, p0, Lcom/noinnion/android/greader/service/FeedService;->l:I

    if-lez p1, :cond_8

    if-ne p1, v0, :cond_6

    .line 25
    invoke-virtual {p0, v1}, Lcom/noinnion/android/greader/service/FeedService;->i(I)Lcom/noinnion/android/greader/service/FeedService$d;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Void;

    .line 26
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 27
    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    :cond_6
    const/4 p2, 0x2

    if-ne p1, p2, :cond_7

    .line 28
    invoke-virtual {p0, v1}, Lcom/noinnion/android/greader/service/FeedService;->i(I)Lcom/noinnion/android/greader/service/FeedService$d;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Void;

    .line 29
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 30
    invoke-virtual {p1, v2, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/service/FeedService;->i(I)Lcom/noinnion/android/greader/service/FeedService$d;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Void;

    .line 32
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 33
    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    .line 34
    :cond_7
    invoke-virtual {p0, v1}, Lcom/noinnion/android/greader/service/FeedService;->i(I)Lcom/noinnion/android/greader/service/FeedService$d;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Void;

    .line 35
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 36
    invoke-virtual {p1, v3, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/service/FeedService;->i(I)Lcom/noinnion/android/greader/service/FeedService$d;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Void;

    .line 38
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 39
    invoke-virtual {p1, v2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    invoke-virtual {p0, p2}, Lcom/noinnion/android/greader/service/FeedService;->i(I)Lcom/noinnion/android/greader/service/FeedService$d;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Void;

    .line 41
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 42
    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_8
    :goto_3
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
