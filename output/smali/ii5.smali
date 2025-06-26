.class public Lii5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lii5$j;,
        Lii5$m;,
        Lii5$k;,
        Lii5$l;,
        Lii5$g;,
        Lii5$i;,
        Lii5$f;,
        Lii5$n;,
        Lii5$h;
    }
.end annotation


# static fields
.field public static final A:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final B:Ljava/util/regex/Pattern;

.field public static final C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final D:[Ljava/lang/String;

.field public static final x:Ljava/io/FilenameFilter;

.field public static final y:Ljava/io/FilenameFilter;

.field public static final z:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lbj5;

.field public final c:Lxi5;

.field public final d:Loj5;

.field public final e:Lwh5;

.field public final f:Lfl5;

.field public final g:Lgj5;

.field public final h:Lol5;

.field public final i:Lqh5;

.field public final j:Lul5$b;

.field public final k:Lii5$j;

.field public final l:Luj5;

.field public final m:Ltl5;

.field public final n:Lul5$a;

.field public final o:Lzg5;

.field public final p:Ldn5;

.field public final q:Ljava/lang/String;

.field public final r:Lhh5;

.field public final s:Lmj5;

.field public t:Laj5;

.field public u:Lf45;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf45<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public v:Lf45;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf45<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public w:Lf45;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf45<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lii5$a;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, Lii5$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lii5;->x:Ljava/io/FilenameFilter;

    .line 2
    new-instance v0, Lii5$b;

    invoke-direct {v0}, Lii5$b;-><init>()V

    sput-object v0, Lii5;->y:Ljava/io/FilenameFilter;

    .line 3
    new-instance v0, Lii5$c;

    invoke-direct {v0}, Lii5$c;-><init>()V

    sput-object v0, Lii5;->z:Ljava/util/Comparator;

    .line 4
    new-instance v0, Lii5$d;

    invoke-direct {v0}, Lii5$d;-><init>()V

    sput-object v0, Lii5;->A:Ljava/util/Comparator;

    const-string v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"

    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lii5;->B:Ljava/util/regex/Pattern;

    const-string v0, "X-CRASHLYTICS-SEND-FLAGS"

    const-string v1, "1"

    .line 6
    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lii5;->C:Ljava/util/Map;

    const-string v0, "SessionUser"

    const-string v1, "SessionApp"

    const-string v2, "SessionOS"

    const-string v3, "SessionDevice"

    .line 7
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lii5;->D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lwh5;Lfl5;Lgj5;Lbj5;Lol5;Lxi5;Lqh5;Ltl5;Lul5$b;Lzg5;Lhh5;Lkm5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p9, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p10, 0x0

    invoke-direct {p9, p10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 3
    new-instance p9, Lf45;

    invoke-direct {p9}, Lf45;-><init>()V

    iput-object p9, p0, Lii5;->u:Lf45;

    .line 4
    new-instance p9, Lf45;

    invoke-direct {p9}, Lf45;-><init>()V

    iput-object p9, p0, Lii5;->v:Lf45;

    .line 5
    new-instance p9, Lf45;

    invoke-direct {p9}, Lf45;-><init>()V

    iput-object p9, p0, Lii5;->w:Lf45;

    .line 6
    new-instance p9, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p9, p10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 7
    iput-object p1, p0, Lii5;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lii5;->e:Lwh5;

    .line 9
    iput-object p3, p0, Lii5;->f:Lfl5;

    .line 10
    iput-object p4, p0, Lii5;->g:Lgj5;

    .line 11
    iput-object p5, p0, Lii5;->b:Lbj5;

    .line 12
    iput-object p6, p0, Lii5;->h:Lol5;

    .line 13
    iput-object p7, p0, Lii5;->c:Lxi5;

    .line 14
    iput-object p8, p0, Lii5;->i:Lqh5;

    .line 15
    new-instance p2, Lsi5;

    invoke-direct {p2, p0}, Lsi5;-><init>(Lii5;)V

    .line 16
    iput-object p2, p0, Lii5;->j:Lul5$b;

    .line 17
    iput-object p11, p0, Lii5;->o:Lzg5;

    .line 18
    iget-object p2, p8, Lqh5;->g:Lfn5;

    invoke-virtual {p2}, Lfn5;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lii5;->q:Ljava/lang/String;

    .line 19
    iput-object p12, p0, Lii5;->r:Lhh5;

    .line 20
    new-instance p2, Loj5;

    invoke-direct {p2}, Loj5;-><init>()V

    iput-object p2, p0, Lii5;->d:Loj5;

    .line 21
    new-instance p3, Lii5$j;

    invoke-direct {p3, p6}, Lii5$j;-><init>(Lol5;)V

    iput-object p3, p0, Lii5;->k:Lii5$j;

    .line 22
    new-instance p7, Luj5;

    invoke-direct {p7, p1, p3}, Luj5;-><init>(Landroid/content/Context;Luj5$b;)V

    iput-object p7, p0, Lii5;->l:Luj5;

    const/4 p3, 0x0

    .line 23
    new-instance p5, Ltl5;

    new-instance p9, Lii5$k;

    invoke-direct {p9, p0, p3}, Lii5$k;-><init>(Lii5;Lii5$a;)V

    invoke-direct {p5, p9}, Ltl5;-><init>(Lul5$c;)V

    .line 24
    iput-object p5, p0, Lii5;->m:Ltl5;

    .line 25
    new-instance p5, Lii5$l;

    invoke-direct {p5, p0, p3}, Lii5$l;-><init>(Lii5;Lii5$a;)V

    iput-object p5, p0, Lii5;->n:Lul5$a;

    .line 26
    new-instance p3, Lan5;

    const/16 p5, 0x400

    const/4 p9, 0x1

    new-array p9, p9, [Ldn5;

    new-instance p11, Lcn5;

    const/16 p12, 0xa

    invoke-direct {p11, p12}, Lcn5;-><init>(I)V

    aput-object p11, p9, p10

    invoke-direct {p3, p5, p9}, Lan5;-><init>(I[Ldn5;)V

    iput-object p3, p0, Lii5;->p:Ldn5;

    .line 27
    new-instance p5, Ljava/io/File;

    .line 28
    new-instance p9, Ljava/io/File;

    iget-object p6, p6, Lol5;->a:Landroid/content/Context;

    invoke-virtual {p6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p6

    const-string p10, ".com.google.firebase.crashlytics"

    invoke-direct {p9, p6, p10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p6

    .line 29
    invoke-direct {p5, p6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance p6, Lyi5;

    invoke-direct {p6, p1, p4, p8, p3}, Lyi5;-><init>(Landroid/content/Context;Lgj5;Lqh5;Ldn5;)V

    .line 31
    new-instance p8, Lnl5;

    invoke-direct {p8, p5, p13}, Lnl5;-><init>(Ljava/io/File;Lkm5;)V

    .line 32
    sget-object p3, Lfm5;->b:Lcl5;

    .line 33
    invoke-static {p1}, Lis;->b(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Lis;->a()Lis;

    move-result-object p1

    new-instance p3, Lbr;

    sget-object p4, Lfm5;->c:Ljava/lang/String;

    sget-object p5, Lfm5;->d:Ljava/lang/String;

    invoke-direct {p3, p4, p5}, Lbr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1, p3}, Lis;->c(Lyr;)Lzq;

    move-result-object p1

    const-class p3, Ltk5;

    .line 36
    new-instance p4, Luq;

    const-string p5, "json"

    invoke-direct {p4, p5}, Luq;-><init>(Ljava/lang/String;)V

    .line 37
    sget-object p5, Lfm5;->e:Lxq;

    .line 38
    check-cast p1, Les;

    const-string p9, "FIREBASE_CRASHLYTICS_REPORT"

    invoke-virtual {p1, p9, p3, p4, p5}, Les;->b(Ljava/lang/String;Ljava/lang/Class;Luq;Lxq;)Lyq;

    move-result-object p1

    .line 39
    new-instance p9, Lfm5;

    invoke-direct {p9, p1, p5}, Lfm5;-><init>(Lyq;Lxq;)V

    .line 40
    new-instance p1, Lmj5;

    move-object p3, p1

    move-object p4, p6

    move-object p5, p8

    move-object p6, p9

    move-object p8, p2

    invoke-direct/range {p3 .. p8}, Lmj5;-><init>(Lyi5;Lnl5;Lfm5;Luj5;Loj5;)V

    .line 41
    iput-object p1, p0, Lii5;->s:Lmj5;

    return-void
.end method

.method public static a(Lii5;)V
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lii5;->j()J

    move-result-wide v14

    .line 3
    new-instance v1, Luh5;

    iget-object v2, v0, Lii5;->g:Lgj5;

    invoke-direct {v1, v2}, Luh5;-><init>(Lgj5;)V

    .line 4
    sget-object v13, Luh5;->b:Ljava/lang/String;

    .line 5
    sget-object v12, Lah5;->a:Lah5;

    const-string v1, "Opening a new session with ID "

    invoke-static {v1, v13, v12}, Ljo;->G(Ljava/lang/String;Ljava/lang/String;Lah5;)V

    .line 6
    iget-object v1, v0, Lii5;->o:Lzg5;

    invoke-interface {v1, v13}, Lzg5;->h(Ljava/lang/String;)Z

    .line 7
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v10, "17.3.0"

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const-string v2, "Crashlytics Android SDK/%s"

    .line 8
    invoke-static {v11, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 9
    new-instance v8, Lfi5;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v3, v13

    move-object v4, v7

    move-wide v5, v14

    invoke-direct/range {v1 .. v6}, Lfi5;-><init>(Lii5;Ljava/lang/String;Ljava/lang/String;J)V

    const-string v1, "BeginSession"

    invoke-virtual {v0, v13, v1, v8}, Lii5;->y(Ljava/lang/String;Ljava/lang/String;Lii5$g;)V

    .line 10
    iget-object v1, v0, Lii5;->o:Lzg5;

    invoke-interface {v1, v13, v7, v14, v15}, Lzg5;->d(Ljava/lang/String;Ljava/lang/String;J)V

    .line 11
    iget-object v1, v0, Lii5;->g:Lgj5;

    .line 12
    iget-object v8, v1, Lgj5;->c:Ljava/lang/String;

    .line 13
    iget-object v2, v0, Lii5;->i:Lqh5;

    iget-object v9, v2, Lqh5;->e:Ljava/lang/String;

    .line 14
    iget-object v7, v2, Lqh5;->f:Ljava/lang/String;

    .line 15
    invoke-virtual {v1}, Lgj5;->b()Ljava/lang/String;

    move-result-object v16

    .line 16
    iget-object v1, v0, Lii5;->i:Lqh5;

    iget-object v1, v1, Lqh5;->c:Ljava/lang/String;

    .line 17
    invoke-static {v1}, Ldj5;->i(Ljava/lang/String;)Ldj5;

    move-result-object v1

    .line 18
    iget v6, v1, Ldj5;->e:I

    .line 19
    new-instance v5, Lgi5;

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v17, v10

    move-object v10, v5

    move-object v5, v7

    move/from16 v18, v6

    move-object/from16 v6, v16

    move-object/from16 v19, v7

    move/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Lgi5;-><init>(Lii5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "SessionApp"

    invoke-virtual {v0, v13, v1, v10}, Lii5;->y(Ljava/lang/String;Ljava/lang/String;Lii5$g;)V

    .line 20
    iget-object v3, v0, Lii5;->o:Lzg5;

    iget-object v10, v0, Lii5;->q:Ljava/lang/String;

    move-object v4, v13

    move-object v5, v8

    move-object v6, v9

    move-object/from16 v7, v19

    move-object/from16 v8, v16

    move/from16 v9, v18

    move-object/from16 v2, v17

    invoke-interface/range {v3 .. v10}, Lzg5;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 22
    sget-object v8, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 23
    iget-object v1, v0, Lii5;->a:Landroid/content/Context;

    .line 24
    invoke-static {v1}, Lvh5;->s(Landroid/content/Context;)Z

    move-result v1

    .line 25
    new-instance v3, Lhi5;

    invoke-direct {v3, v0, v10, v8, v1}, Lhi5;-><init>(Lii5;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "SessionOS"

    invoke-virtual {v0, v13, v4, v3}, Lii5;->y(Ljava/lang/String;Ljava/lang/String;Lii5$g;)V

    .line 26
    iget-object v3, v0, Lii5;->o:Lzg5;

    invoke-interface {v3, v13, v10, v8, v1}, Lzg5;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 27
    iget-object v1, v0, Lii5;->a:Landroid/content/Context;

    .line 28
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 29
    sget-object v4, Lvh5$b;->l:Lvh5$b;

    sget-object v9, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 30
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Architecture#getValue()::Build.CPU_ABI returned null or empty"

    .line 31
    invoke-virtual {v12, v5}, Lah5;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v9, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 33
    sget-object v6, Lvh5$b;->o:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvh5$b;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v5

    .line 34
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    .line 35
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v20

    .line 37
    invoke-static {}, Lvh5;->o()J

    move-result-wide v21

    .line 38
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    move-object/from16 v17, v2

    int-to-long v2, v3

    mul-long v23, v4, v2

    .line 39
    invoke-static {v1}, Lvh5;->q(Landroid/content/Context;)Z

    move-result v25

    .line 40
    invoke-static {v1}, Lvh5;->j(Landroid/content/Context;)I

    move-result v26

    .line 41
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 42
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 43
    new-instance v4, Lji5;

    move-object v1, v4

    move-object/from16 v3, v17

    move-object/from16 v2, p0

    move-wide/from16 v29, v14

    move-object v14, v3

    move/from16 v3, v18

    move-object v15, v4

    move-object v4, v6

    move-object/from16 v31, v5

    move/from16 v5, v20

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-wide/from16 v6, v21

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-wide/from16 v8, v23

    move-object/from16 v36, v10

    move/from16 v10, v25

    move-object/from16 v37, v11

    move/from16 v11, v26

    move-object/from16 v38, v12

    move-object/from16 v12, v33

    move-object/from16 v39, v14

    move-object v14, v13

    move-object/from16 v13, v31

    invoke-direct/range {v1 .. v13}, Lji5;-><init>(Lii5;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "SessionDevice"

    invoke-virtual {v0, v14, v1, v15}, Lii5;->y(Ljava/lang/String;Ljava/lang/String;Lii5$g;)V

    .line 44
    iget-object v1, v0, Lii5;->o:Lzg5;

    move-object/from16 v16, v1

    move-object/from16 v17, v14

    move-object/from16 v19, v32

    move-object/from16 v27, v33

    move-object/from16 v28, v31

    invoke-interface/range {v16 .. v28}, Lzg5;->c(Ljava/lang/String;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v1, v0, Lii5;->l:Luj5;

    invoke-virtual {v1, v14}, Luj5;->a(Ljava/lang/String;)V

    .line 46
    iget-object v0, v0, Lii5;->s:Lmj5;

    .line 47
    invoke-static {v14}, Lii5;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    iget-object v2, v0, Lmj5;->a:Lyi5;

    .line 49
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v3, Ltk5;->a:Ljava/nio/charset/Charset;

    new-instance v3, Lzj5$b;

    invoke-direct {v3}, Lzj5$b;-><init>()V

    move-object/from16 v4, v39

    .line 51
    iput-object v4, v3, Lzj5$b;->a:Ljava/lang/String;

    .line 52
    iget-object v4, v2, Lyi5;->c:Lqh5;

    iget-object v4, v4, Lqh5;->a:Ljava/lang/String;

    const-string v5, "Null gmpAppId"

    .line 53
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iput-object v4, v3, Lzj5$b;->b:Ljava/lang/String;

    .line 55
    iget-object v4, v2, Lyi5;->b:Lgj5;

    .line 56
    invoke-virtual {v4}, Lgj5;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Null installationUuid"

    .line 57
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    iput-object v4, v3, Lzj5$b;->d:Ljava/lang/String;

    .line 59
    iget-object v4, v2, Lyi5;->c:Lqh5;

    iget-object v4, v4, Lqh5;->e:Ljava/lang/String;

    const-string v5, "Null buildVersion"

    .line 60
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    iput-object v4, v3, Lzj5$b;->e:Ljava/lang/String;

    .line 62
    iget-object v4, v2, Lyi5;->c:Lqh5;

    iget-object v4, v4, Lqh5;->f:Ljava/lang/String;

    const-string v6, "Null displayVersion"

    .line 63
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    iput-object v4, v3, Lzj5$b;->f:Ljava/lang/String;

    const/4 v4, 0x4

    .line 65
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lzj5$b;->c:Ljava/lang/Integer;

    .line 66
    new-instance v4, Ldk5$b;

    invoke-direct {v4}, Ldk5$b;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ldk5$b;->b(Z)Ltk5$d$b;

    .line 67
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v4, Ldk5$b;->c:Ljava/lang/Long;

    const-string v6, "Null identifier"

    .line 68
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    iput-object v1, v4, Ldk5$b;->b:Ljava/lang/String;

    .line 70
    sget-object v1, Lyi5;->e:Ljava/lang/String;

    const-string v7, "Null generator"

    .line 71
    invoke-static {v1, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iput-object v1, v4, Ldk5$b;->a:Ljava/lang/String;

    .line 73
    iget-object v1, v2, Lyi5;->b:Lgj5;

    .line 74
    iget-object v8, v1, Lgj5;->c:Ljava/lang/String;

    .line 75
    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iget-object v1, v2, Lyi5;->c:Lqh5;

    iget-object v9, v1, Lqh5;->e:Ljava/lang/String;

    const-string v1, "Null version"

    .line 77
    invoke-static {v9, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iget-object v6, v2, Lyi5;->c:Lqh5;

    iget-object v10, v6, Lqh5;->f:Ljava/lang/String;

    .line 79
    iget-object v6, v2, Lyi5;->b:Lgj5;

    .line 80
    invoke-virtual {v6}, Lgj5;->b()Ljava/lang/String;

    move-result-object v12

    .line 81
    iget-object v6, v2, Lyi5;->c:Lqh5;

    iget-object v6, v6, Lqh5;->g:Lfn5;

    invoke-virtual {v6}, Lfn5;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    const-string v7, "Unity"

    move-object v14, v6

    move-object v13, v7

    goto :goto_1

    :cond_2
    move-object v13, v7

    move-object v14, v13

    .line 82
    :goto_1
    new-instance v6, Lek5;

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v15}, Lek5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltk5$d$a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lek5$a;)V

    .line 83
    iput-object v6, v4, Ldk5$b;->f:Ltk5$d$a;

    const/4 v6, 0x3

    .line 84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v8, v36

    .line 85
    invoke-static {v8, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v1, v34

    .line 86
    invoke-static {v1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    iget-object v5, v2, Lyi5;->a:Landroid/content/Context;

    .line 88
    invoke-static {v5}, Lvh5;->s(Landroid/content/Context;)Z

    move-result v5

    .line 89
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-nez v7, :cond_3

    const-string v9, " platform"

    goto :goto_2

    :cond_3
    const-string v9, ""

    :goto_2
    if-nez v5, :cond_4

    const-string v10, " jailbroken"

    .line 90
    invoke-static {v9, v10}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    :cond_4
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 92
    new-instance v9, Lrk5;

    .line 93
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 94
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v16, v9

    move-object/from16 v18, v8

    move-object/from16 v19, v1

    invoke-direct/range {v16 .. v21}, Lrk5;-><init>(ILjava/lang/String;Ljava/lang/String;ZLrk5$a;)V

    .line 95
    iput-object v9, v4, Ldk5$b;->h:Ltk5$d$e;

    .line 96
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, 0x7

    if-eqz v5, :cond_5

    goto :goto_3

    .line 98
    :cond_5
    sget-object v5, Lyi5;->f:Ljava/util/Map;

    move-object/from16 v9, v35

    move-object/from16 v8, v37

    invoke-virtual {v9, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_6

    goto :goto_3

    .line 99
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 100
    :goto_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v5

    .line 101
    invoke-static {}, Lvh5;->o()J

    move-result-wide v8

    .line 102
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v12, v1

    mul-long v10, v10, v12

    .line 103
    iget-object v1, v2, Lyi5;->a:Landroid/content/Context;

    invoke-static {v1}, Lvh5;->q(Landroid/content/Context;)Z

    move-result v1

    .line 104
    iget-object v2, v2, Lyi5;->a:Landroid/content/Context;

    invoke-static {v2}, Lvh5;->j(Landroid/content/Context;)I

    move-result v2

    .line 105
    new-instance v12, Lgk5$b;

    invoke-direct {v12}, Lgk5$b;-><init>()V

    .line 106
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v12, Lgk5$b;->a:Ljava/lang/Integer;

    const-string v7, "Null model"

    move-object/from16 v13, v32

    .line 107
    invoke-static {v13, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    iput-object v13, v12, Lgk5$b;->b:Ljava/lang/String;

    .line 109
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v12, Lgk5$b;->c:Ljava/lang/Integer;

    .line 110
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v12, Lgk5$b;->d:Ljava/lang/Long;

    .line 111
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v12, Lgk5$b;->e:Ljava/lang/Long;

    .line 112
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v12, Lgk5$b;->f:Ljava/lang/Boolean;

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v12, Lgk5$b;->g:Ljava/lang/Integer;

    const-string v1, "Null manufacturer"

    move-object/from16 v2, v33

    .line 114
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    iput-object v2, v12, Lgk5$b;->h:Ljava/lang/String;

    const-string v1, "Null modelClass"

    move-object/from16 v2, v31

    .line 116
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    iput-object v2, v12, Lgk5$b;->i:Ljava/lang/String;

    .line 118
    invoke-virtual {v12}, Lgk5$b;->a()Ltk5$d$c;

    move-result-object v1

    .line 119
    iput-object v1, v4, Ldk5$b;->i:Ltk5$d$c;

    .line 120
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v4, Ldk5$b;->k:Ljava/lang/Integer;

    .line 121
    invoke-virtual {v4}, Ldk5$b;->a()Ltk5$d;

    move-result-object v1

    .line 122
    iput-object v1, v3, Lzj5$b;->g:Ltk5$d;

    .line 123
    invoke-virtual {v3}, Lzj5$b;->a()Ltk5;

    move-result-object v1

    .line 124
    iget-object v0, v0, Lmj5;->b:Lnl5;

    .line 125
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {v1}, Ltk5;->h()Ltk5$d;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v0, "Could not get session for report"

    move-object/from16 v1, v38

    .line 127
    invoke-virtual {v1, v0}, Lah5;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 128
    :cond_7
    invoke-virtual {v2}, Ltk5$d;->g()Ljava/lang/String;

    move-result-object v2

    .line 129
    :try_start_0
    invoke-virtual {v0, v2}, Lnl5;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lnl5;->i(Ljava/io/File;)Ljava/io/File;

    .line 130
    sget-object v3, Lnl5;->i:Lcl5;

    invoke-virtual {v3, v1}, Lcl5;->g(Ltk5;)Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v3, Ljava/io/File;

    const-string v4, "report"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lnl5;->l(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 132
    sget-object v1, Lah5;->a:Lah5;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not persist report for session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lah5;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void

    .line 133
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-static {v1, v9}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lii5;)Le45;
    .locals 9

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v1, Lai5;->e:Lai5;

    .line 4
    invoke-virtual {p0}, Lii5;->l()Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v1}, Lii5;->r(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 5
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 6
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x1

    :try_start_1
    const-string v8, "com.google.firebase.crash.FirebaseCrash"

    .line 7
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v8, 0x1

    goto :goto_1

    :catch_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_0

    .line 8
    :try_start_2
    sget-object v5, Lah5;->a:Lah5;

    const-string v6, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    invoke-virtual {v5, v6}, Lah5;->b(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 9
    invoke-static {v5}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object v5

    goto :goto_2

    .line 10
    :cond_0
    new-instance v8, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v8, v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 11
    new-instance v7, Lli5;

    invoke-direct {v7, p0, v5, v6}, Lli5;-><init>(Lii5;J)V

    invoke-static {v8, v7}, Lc50;->i(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le45;

    move-result-object v5

    .line 12
    :goto_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 13
    :catch_1
    sget-object v5, Lah5;->a:Lah5;

    const-string v6, "Could not parse timestamp from file "

    invoke-static {v6}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lah5;->b(Ljava/lang/String;)V

    .line 14
    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {v0}, Lc50;->M0(Ljava/util/Collection;)Le45;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "Failed to close "

    const-string v1, "Failed to flush to append to "

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {v3}, Lrl5;->i(Ljava/io/OutputStream;)Lrl5;

    move-result-object v2

    .line 3
    sget-object v4, Lsl5;->a:Lpl5;

    .line 4
    invoke-static {p0}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object p0

    const/4 v4, 0x7

    const/4 v5, 0x2

    .line 5
    invoke-virtual {v2, v4, v5}, Lrl5;->r(II)V

    .line 6
    invoke-static {v5, p0}, Lrl5;->b(ILpl5;)I

    move-result v4

    const/4 v6, 0x5

    .line 7
    invoke-static {v6}, Lrl5;->e(I)I

    move-result v7

    .line 8
    invoke-static {v4}, Lrl5;->d(I)I

    move-result v8

    add-int/2addr v8, v7

    add-int/2addr v8, v4

    .line 9
    invoke-virtual {v2, v8}, Lrl5;->p(I)V

    .line 10
    invoke-virtual {v2, v6, v5}, Lrl5;->r(II)V

    .line 11
    invoke-virtual {v2, v4}, Lrl5;->p(I)V

    .line 12
    invoke-virtual {v2, v5, p0}, Lrl5;->m(ILpl5;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lvh5;->g(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lvh5;->c(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v3, v2

    .line 15
    :goto_0
    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lvh5;->g(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lvh5;->c(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 17
    throw p0
.end method

.method public static e(Ljava/io/InputStream;Lrl5;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-array v0, p2, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    sub-int v3, p2, v2

    .line 2
    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_0

    add-int/2addr v2, v3

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget p0, p1, Lrl5;->f:I

    iget v2, p1, Lrl5;->g:I

    sub-int/2addr p0, v2

    if-lt p0, p2, :cond_1

    .line 5
    iget-object p0, p1, Lrl5;->e:[B

    invoke-static {v0, v1, p0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget p0, p1, Lrl5;->g:I

    add-int/2addr p0, p2

    iput p0, p1, Lrl5;->g:I

    goto :goto_1

    .line 7
    :cond_1
    iget-object v3, p1, Lrl5;->e:[B

    invoke-static {v0, v1, v3, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, p0, 0x0

    sub-int/2addr p2, p0

    .line 8
    iget p0, p1, Lrl5;->f:I

    iput p0, p1, Lrl5;->g:I

    .line 9
    invoke-virtual {p1}, Lrl5;->k()V

    .line 10
    iget p0, p1, Lrl5;->f:I

    if-gt p2, p0, :cond_2

    .line 11
    iget-object p0, p1, Lrl5;->e:[B

    invoke-static {v0, v2, p0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iput p2, p1, Lrl5;->g:I

    goto :goto_1

    .line 13
    :cond_2
    iget-object p0, p1, Lrl5;->h:Ljava/io/OutputStream;

    invoke-virtual {p0, v0, v2, p2}, Ljava/io/OutputStream;->write([BII)V

    :goto_1
    return-void
.end method

.method public static j()J
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static o(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x23

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/io/File;

    :cond_0
    return-object p0
.end method

.method public static t(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "-"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static w(Lrl5;[Ljava/io/File;Ljava/lang/String;)V
    .locals 10

    .line 1
    sget-object v0, Lvh5;->c:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 3
    :try_start_0
    sget-object v4, Lah5;->a:Lah5;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Found Non Fatal for session ID %s in %s "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v1

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 5
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v4, v5}, Lah5;->b(Ljava/lang/String;)V

    .line 7
    invoke-static {p0, v3}, Lii5;->z(Lrl5;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 8
    sget-object v4, Lah5;->a:Lah5;

    const/4 v5, 0x6

    .line 9
    invoke-virtual {v4, v5}, Lah5;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "FirebaseCrashlytics"

    const-string v5, "Error writting non-fatal to session."

    .line 10
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static z(Lrl5;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to close file input stream."

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    sget-object p0, Lah5;->a:Lah5;

    const-string v0, "Tried to include a file that doesn\'t exist: "

    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lah5;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int p1, v3

    invoke-static {v2, p0, p1}, Lii5;->e(Ljava/io/InputStream;Lrl5;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    invoke-static {v2, v0}, Lvh5;->c(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v1, v0}, Lvh5;->c(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 6
    throw p0
.end method


# virtual methods
.method public final d(Lql5;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lql5;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Lah5;->a:Lah5;

    const/4 v1, 0x6

    .line 3
    invoke-virtual {v0, v1}, Lah5;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FirebaseCrashlytics"

    const-string v1, "Error closing session file stream in the presence of an exception"

    .line 4
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final f(IZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    add-int/lit8 v0, v3, 0x8

    .line 1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lii5;->s()[Ljava/io/File;

    move-result-object v5

    .line 3
    array-length v6, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_0

    .line 4
    aget-object v8, v5, v7

    invoke-static {v8}, Lii5;->o(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 5
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v1, Lii5;->l:Luj5;

    .line 7
    iget-object v0, v0, Luj5;->b:Luj5$b;

    check-cast v0, Lii5$j;

    invoke-virtual {v0}, Lii5$j;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    array-length v5, v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_3

    aget-object v8, v0, v7

    .line 9
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".temp"

    .line 10
    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    goto :goto_2

    :cond_1
    const/16 v11, 0x14

    .line 11
    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 12
    :goto_2
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 13
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 14
    :cond_3
    new-instance v0, Lii5$f;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lii5$f;-><init>(Lii5$a;)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lii5;->l()Ljava/io/File;

    move-result-object v7

    invoke-static {v7, v0}, Lii5;->r(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 16
    array-length v7, v0

    const/4 v8, 0x0

    :goto_3
    const/4 v9, 0x1

    if-ge v8, v7, :cond_6

    aget-object v10, v0, v8

    .line 17
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 18
    sget-object v12, Lii5;->B:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 19
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-nez v13, :cond_4

    .line 20
    sget-object v9, Lah5;->a:Lah5;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Deleting unknown file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lah5;->b(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 22
    :cond_4
    invoke-virtual {v12, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 23
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 24
    sget-object v9, Lah5;->a:Lah5;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Trimming session file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lah5;->b(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_5
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 26
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lii5;->s()[Ljava/io/File;

    move-result-object v4

    .line 27
    array-length v0, v4

    if-gt v0, v3, :cond_7

    .line 28
    sget-object v0, Lah5;->a:Lah5;

    const-string v2, "No open sessions to be closed."

    invoke-virtual {v0, v2}, Lah5;->b(Ljava/lang/String;)V

    return-void

    .line 29
    :cond_7
    aget-object v0, v4, v3

    .line 30
    invoke-static {v0}, Lii5;->o(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 31
    invoke-virtual/range {p0 .. p0}, Lii5;->p()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 32
    iget-object v0, v1, Lii5;->d:Loj5;

    goto :goto_6

    .line 33
    :cond_8
    new-instance v0, Ljj5;

    invoke-virtual/range {p0 .. p0}, Lii5;->l()Ljava/io/File;

    move-result-object v8

    invoke-direct {v0, v8}, Ljj5;-><init>(Ljava/io/File;)V

    const-string v8, "Failed to close user metadata file."

    .line 34
    invoke-virtual {v0, v7}, Ljj5;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_9

    .line 36
    new-instance v0, Loj5;

    invoke-direct {v0}, Loj5;-><init>()V

    goto :goto_6

    .line 37
    :cond_9
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    invoke-static {v10}, Lvh5;->u(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljj5;->b(Ljava/lang/String;)Loj5;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    invoke-static {v10, v8}, Lvh5;->c(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_1e

    :catch_0
    move-exception v0

    move-object v5, v10

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_1d

    :catch_1
    move-exception v0

    .line 40
    :goto_5
    :try_start_2
    sget-object v10, Lah5;->a:Lah5;

    const-string v11, "Error deserializing user metadata."

    const/4 v12, 0x6

    .line 41
    invoke-virtual {v10, v12}, Lah5;->a(I)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v10, "FirebaseCrashlytics"

    .line 42
    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    :cond_a
    invoke-static {v5, v8}, Lvh5;->c(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 44
    new-instance v0, Loj5;

    invoke-direct {v0}, Loj5;-><init>()V

    .line 45
    :goto_6
    new-instance v5, Lki5;

    invoke-direct {v5, v1, v0}, Lki5;-><init>(Lii5;Loj5;)V

    const-string v0, "SessionUser"

    invoke-virtual {v1, v7, v0, v5}, Lii5;->y(Ljava/lang/String;Ljava/lang/String;Lii5$g;)V

    .line 46
    iget-object v0, v1, Lii5;->o:Lzg5;

    invoke-interface {v0, v7}, Lzg5;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 47
    sget-object v0, Lah5;->a:Lah5;

    const-string v5, "Finalizing native report for session "

    invoke-static {v5, v7, v0}, Ljo;->G(Ljava/lang/String;Ljava/lang/String;Lah5;)V

    .line 48
    iget-object v5, v1, Lii5;->o:Lzg5;

    .line 49
    invoke-interface {v5, v7}, Lzg5;->b(Ljava/lang/String;)Lch5;

    move-result-object v5

    .line 50
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No minidump data found for session "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lah5;->f(Ljava/lang/String;)V

    .line 52
    iget-object v5, v1, Lii5;->o:Lzg5;

    invoke-interface {v5, v7}, Lzg5;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "Could not finalize native session: "

    .line 53
    invoke-static {v5, v7, v0}, Ljo;->G(Ljava/lang/String;Ljava/lang/String;Lah5;)V

    .line 54
    :cond_b
    sget-object v0, Lah5;->a:Lah5;

    const-string v5, "Closing open sessions."

    invoke-virtual {v0, v5}, Lah5;->b(Ljava/lang/String;)V

    move v5, v3

    .line 55
    :goto_7
    array-length v0, v4

    if-ge v5, v0, :cond_17

    .line 56
    aget-object v0, v4, v5

    .line 57
    invoke-static {v0}, Lii5;->o(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 58
    sget-object v8, Lah5;->a:Lah5;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Closing session: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lah5;->b(Ljava/lang/String;)V

    .line 59
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Collecting session parts for ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lah5;->b(Ljava/lang/String;)V

    .line 60
    new-instance v10, Lii5$h;

    const-string v11, "SessionCrash"

    invoke-static {v7, v11}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lii5$h;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lii5;->l()Ljava/io/File;

    move-result-object v11

    invoke-static {v11, v10}, Lii5;->r(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v10

    .line 62
    array-length v11, v10

    if-lez v11, :cond_c

    const/4 v11, 0x1

    goto :goto_8

    :cond_c
    const/4 v11, 0x0

    .line 63
    :goto_8
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v7, v14, v6

    .line 64
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v9

    const-string v9, "Session %s has fatal exception: %s"

    invoke-static {v12, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lah5;->b(Ljava/lang/String;)V

    .line 65
    new-instance v9, Lii5$h;

    const-string v14, "SessionEvent"

    invoke-static {v7, v14}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Lii5$h;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lii5;->l()Ljava/io/File;

    move-result-object v15

    invoke-static {v15, v9}, Lii5;->r(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9

    .line 67
    array-length v15, v9

    if-lez v15, :cond_d

    const/4 v15, 0x1

    goto :goto_9

    :cond_d
    const/4 v15, 0x0

    :goto_9
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v7, v13, v6

    .line 68
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/16 v16, 0x1

    aput-object v6, v13, v16

    const-string v6, "Session %s has non-fatal exceptions: %s"

    .line 69
    invoke-static {v12, v6, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 70
    invoke-virtual {v8, v6}, Lah5;->b(Ljava/lang/String;)V

    if-nez v11, :cond_f

    if-eqz v15, :cond_e

    goto :goto_a

    :cond_e
    const-string v0, "No events present for session ID "

    .line 71
    invoke-static {v0, v7, v8}, Ljo;->G(Ljava/lang/String;Ljava/lang/String;Lah5;)V

    goto/16 :goto_f

    .line 72
    :cond_f
    :goto_a
    array-length v6, v9

    if-le v6, v2, :cond_10

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 73
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v13, 0x0

    aput-object v9, v6, v13

    const-string v9, "Trimming down to %d logged exceptions."

    .line 74
    invoke-static {v12, v9, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-virtual {v8, v6}, Lah5;->b(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lii5;->l()Ljava/io/File;

    move-result-object v6

    new-instance v9, Lii5$h;

    invoke-static {v7, v14}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Lii5$h;-><init>(Ljava/lang/String;)V

    sget-object v12, Lii5;->A:Ljava/util/Comparator;

    .line 77
    invoke-static {v6, v9, v2, v12}, Lqj5;->b(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)I

    .line 78
    new-instance v6, Lii5$h;

    invoke-static {v7, v14}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lii5$h;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lii5;->l()Ljava/io/File;

    move-result-object v9

    invoke-static {v9, v6}, Lii5;->r(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9

    :cond_10
    if-eqz v11, :cond_11

    const/4 v6, 0x0

    .line 80
    aget-object v6, v10, v6

    goto :goto_b

    :cond_11
    const/4 v6, 0x0

    :goto_b
    const-string v10, "Failed to close CLS file"

    const-string v11, "Error flushing session file stream"

    if-eqz v6, :cond_12

    const/4 v12, 0x1

    goto :goto_c

    :cond_12
    const/4 v12, 0x0

    :goto_c
    if-eqz v12, :cond_13

    .line 81
    invoke-virtual/range {p0 .. p0}, Lii5;->k()Ljava/io/File;

    move-result-object v13

    goto :goto_d

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lii5;->n()Ljava/io/File;

    move-result-object v13

    .line 82
    :goto_d
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_14

    .line 83
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 84
    :cond_14
    :try_start_3
    new-instance v14, Lql5;

    invoke-direct {v14, v13, v7}, Lql5;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 85
    :try_start_4
    invoke-static {v14}, Lrl5;->i(Ljava/io/OutputStream;)Lrl5;

    move-result-object v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 86
    :try_start_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collecting SessionStart data for session ID "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lah5;->b(Ljava/lang/String;)V

    .line 87
    invoke-static {v13, v0}, Lii5;->z(Lrl5;Ljava/io/File;)V

    .line 88
    invoke-static {}, Lii5;->j()J

    move-result-wide v2

    const/4 v0, 0x4

    invoke-virtual {v13, v0, v2, v3}, Lrl5;->t(IJ)V

    const/4 v0, 0x5

    .line 89
    invoke-virtual {v13, v0, v12}, Lrl5;->l(IZ)V

    const/16 v0, 0xb

    const/4 v2, 0x1

    .line 90
    invoke-virtual {v13, v0, v2}, Lrl5;->s(II)V

    const/16 v0, 0xc

    const/4 v2, 0x3

    .line 91
    invoke-virtual {v13, v0, v2}, Lrl5;->n(II)V

    .line 92
    invoke-virtual {v1, v13, v7}, Lii5;->v(Lrl5;Ljava/lang/String;)V

    .line 93
    invoke-static {v13, v9, v7}, Lii5;->w(Lrl5;[Ljava/io/File;Ljava/lang/String;)V

    if-eqz v12, :cond_15

    .line 94
    invoke-static {v13, v6}, Lii5;->z(Lrl5;Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 95
    :cond_15
    invoke-static {v13, v11}, Lvh5;->g(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 96
    invoke-static {v14, v10}, Lvh5;->c(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_f

    :catch_2
    move-exception v0

    goto :goto_e

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    goto :goto_11

    :catch_3
    move-exception v0

    const/4 v13, 0x0

    goto :goto_e

    :catchall_3
    move-exception v0

    const/4 v2, 0x0

    const/4 v14, 0x0

    goto :goto_11

    :catch_4
    move-exception v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 97
    :goto_e
    :try_start_6
    sget-object v2, Lah5;->a:Lah5;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write session file for session ID: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lah5;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 98
    invoke-static {v13, v11}, Lvh5;->g(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, v14}, Lii5;->d(Lql5;)V

    .line 100
    :goto_f
    sget-object v0, Lah5;->a:Lah5;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing session part files for ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lah5;->b(Ljava/lang/String;)V

    .line 101
    new-instance v0, Lii5$n;

    invoke-direct {v0, v7}, Lii5$n;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lii5;->l()Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lii5;->r(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 103
    array-length v2, v0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_16

    aget-object v6, v0, v3

    .line 104
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_16
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x1

    move/from16 v2, p1

    move/from16 v3, p2

    goto/16 :goto_7

    :catchall_4
    move-exception v0

    move-object v2, v13

    .line 105
    :goto_11
    invoke-static {v2, v11}, Lvh5;->g(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 106
    invoke-static {v14, v10}, Lvh5;->c(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 107
    throw v0

    :cond_17
    if-eqz p2, :cond_18

    const/4 v0, 0x0

    .line 108
    aget-object v0, v4, v0

    .line 109
    invoke-static {v0}, Lii5;->o(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lii5;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_18
    const/4 v0, 0x0

    .line 110
    :goto_12
    iget-object v2, v1, Lii5;->s:Lmj5;

    invoke-static {}, Lii5;->j()J

    move-result-wide v3

    .line 111
    iget-object v2, v2, Lmj5;->b:Lnl5;

    .line 112
    new-instance v5, Lil5;

    invoke-direct {v5, v0}, Lil5;-><init>(Ljava/lang/String;)V

    .line 113
    iget-object v0, v2, Lnl5;->b:Ljava/io/File;

    .line 114
    invoke-static {v0, v5}, Lnl5;->f(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object v0

    .line 115
    sget-object v5, Lnl5;->j:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x8

    if-gt v5, v6, :cond_19

    goto :goto_14

    .line 117
    :cond_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0, v6, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 118
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 119
    invoke-static {v7}, Lnl5;->k(Ljava/io/File;)V

    goto :goto_13

    :cond_1a
    const/4 v5, 0x0

    .line 120
    invoke-interface {v0, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 121
    :goto_14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/io/File;

    .line 122
    sget-object v0, Lah5;->a:Lah5;

    const-string v7, "Finalizing report for session "

    invoke-static {v7}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lah5;->b(Ljava/lang/String;)V

    .line 123
    sget-object v7, Lnl5;->k:Ljava/io/FilenameFilter;

    invoke-static {v6, v7}, Lnl5;->g(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v7

    .line 124
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1b

    const-string v7, "Session "

    .line 125
    invoke-static {v7}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has no events."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lah5;->b(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 126
    :cond_1b
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 127
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1c
    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/io/File;

    .line 129
    :try_start_7
    sget-object v0, Lnl5;->i:Lcl5;

    invoke-static {v10}, Lnl5;->j(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    .line 130
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 131
    :try_start_8
    new-instance v12, Landroid/util/JsonReader;

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v11}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 132
    :try_start_9
    invoke-static {v12}, Lcl5;->b(Landroid/util/JsonReader;)Ltk5$d$d;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 133
    :try_start_a
    invoke-virtual {v12}, Landroid/util/JsonReader;->close()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 134
    :try_start_b
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v9, :cond_1e

    .line 135
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v11, "event"

    .line 136
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    const-string v11, "_"

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_17

    :cond_1d
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_1c

    :cond_1e
    const/4 v9, 0x1

    goto :goto_16

    :catchall_5
    move-exception v0

    move-object v11, v0

    .line 137
    :try_start_c
    invoke-virtual {v12}, Landroid/util/JsonReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    :try_start_d
    throw v11
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    :catch_5
    move-exception v0

    .line 138
    :try_start_e
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    :catch_6
    move-exception v0

    .line 139
    sget-object v11, Lah5;->a:Lah5;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not add event to report for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10, v0}, Lah5;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 140
    :cond_1f
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 141
    sget-object v0, Lah5;->a:Lah5;

    const-string v7, "Could not parse event files for session "

    invoke-static {v7}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lah5;->b(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 142
    :cond_20
    new-instance v0, Ljava/io/File;

    const-string v7, "user"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 144
    :try_start_f
    invoke-static {v0}, Lnl5;->j(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_18

    :catch_7
    move-exception v0

    move-object v7, v0

    .line 145
    sget-object v0, Lah5;->a:Lah5;

    const-string v10, "Could not read user ID file in "

    invoke-static {v10}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v7}, Lah5;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_21
    const/4 v0, 0x0

    .line 146
    :goto_18
    new-instance v7, Ljava/io/File;

    const-string v10, "report"

    invoke-direct {v7, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v9, :cond_22

    .line 147
    iget-object v10, v2, Lnl5;->c:Ljava/io/File;

    goto :goto_19

    :cond_22
    iget-object v10, v2, Lnl5;->d:Ljava/io/File;

    .line 148
    :goto_19
    :try_start_10
    sget-object v11, Lnl5;->i:Lcl5;

    .line 149
    invoke-static {v7}, Lnl5;->j(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcl5;->f(Ljava/lang/String;)Ltk5;

    move-result-object v12

    .line 150
    invoke-virtual {v12, v3, v4, v9, v0}, Ltk5;->j(JZLjava/lang/String;)Ltk5;

    move-result-object v0

    .line 151
    new-instance v9, Luk5;

    invoke-direct {v9, v8}, Luk5;-><init>(Ljava/util/List;)V

    .line 152
    invoke-virtual {v0}, Ltk5;->h()Ltk5$d;

    move-result-object v8

    if-eqz v8, :cond_24

    .line 153
    invoke-virtual {v0}, Ltk5;->i()Ltk5$a;

    move-result-object v8

    invoke-virtual {v0}, Ltk5;->h()Ltk5$d;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ltk5$d;->l()Ltk5$d$b;

    move-result-object v0

    check-cast v0, Ldk5$b;

    .line 155
    iput-object v9, v0, Ldk5$b;->j:Luk5;

    .line 156
    invoke-virtual {v0}, Ldk5$b;->a()Ltk5$d;

    move-result-object v0

    .line 157
    check-cast v8, Lzj5$b;

    .line 158
    iput-object v0, v8, Lzj5$b;->g:Ltk5$d;

    .line 159
    invoke-virtual {v8}, Lzj5$b;->a()Ltk5;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ltk5;->h()Ltk5$d;

    move-result-object v8

    if-nez v8, :cond_23

    goto :goto_1a

    .line 161
    :cond_23
    new-instance v9, Ljava/io/File;

    .line 162
    invoke-static {v10}, Lnl5;->i(Ljava/io/File;)Ljava/io/File;

    invoke-virtual {v8}, Ltk5$d;->g()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v11, v0}, Lcl5;->g(Ltk5;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v9, v0}, Lnl5;->l(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1a

    .line 165
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v8, "Reports without sessions cannot have events added to them."

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    :catch_8
    move-exception v0

    .line 166
    sget-object v8, Lah5;->a:Lah5;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not synthesize final report file for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7, v0}, Lah5;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    :goto_1a
    invoke-static {v6}, Lnl5;->k(Ljava/io/File;)V

    goto/16 :goto_15

    .line 168
    :cond_25
    iget-object v0, v2, Lnl5;->f:Lkm5;

    .line 169
    check-cast v0, Ljm5;

    invoke-virtual {v0}, Ljm5;->c()Lsm5;

    move-result-object v0

    invoke-interface {v0}, Lsm5;->b()Lrm5;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {v2}, Lnl5;->e()Ljava/util/List;

    move-result-object v0

    .line 171
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_26

    goto :goto_1c

    .line 172
    :cond_26
    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 174
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1b

    :cond_27
    :goto_1c
    return-void

    :goto_1d
    move-object v10, v5

    .line 175
    :goto_1e
    invoke-static {v10, v8}, Lvh5;->c(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 176
    throw v0
.end method

.method public final g(J)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lii5;->l()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".ae"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object p1, Lah5;->a:Lah5;

    const-string p2, "Could not write app exception marker."

    invoke-virtual {p1, p2}, Lah5;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public h(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lii5;->e:Lwh5;

    invoke-virtual {v0}, Lwh5;->a()V

    .line 2
    invoke-virtual {p0}, Lii5;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lah5;->a:Lah5;

    const-string v0, "Skipping session finalization because a crash has already occurred."

    invoke-virtual {p1, v0}, Lah5;->b(Ljava/lang/String;)V

    return v1

    .line 4
    :cond_0
    sget-object v0, Lah5;->a:Lah5;

    const-string v2, "Finalizing previously open sessions."

    invoke-virtual {v0, v2}, Lah5;->b(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lii5;->f(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "Closed all previously open sessions"

    .line 6
    invoke-virtual {v0, p1}, Lah5;->b(Ljava/lang/String;)V

    return v2

    :catch_0
    move-exception p1

    .line 7
    sget-object v0, Lah5;->a:Lah5;

    const/4 v2, 0x6

    .line 8
    invoke-virtual {v0, v2}, Lah5;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FirebaseCrashlytics"

    const-string v2, "Unable to finalize previously open sessions."

    .line 9
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lii5;->s()[Ljava/io/File;

    move-result-object v0

    .line 2
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    aget-object v0, v0, v1

    invoke-static {v0}, Lii5;->o(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public k()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lii5;->l()Ljava/io/File;

    move-result-object v1

    const-string v2, "fatal-sessions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public l()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lii5;->h:Lol5;

    invoke-virtual {v0}, Lol5;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lii5;->l()Ljava/io/File;

    move-result-object v1

    const-string v2, "native-sessions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public n()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lii5;->l()Ljava/io/File;

    move-result-object v1

    const-string v2, "nonfatal-sessions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lii5;->t:Laj5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Laj5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()[Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lii5;->k()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lii5;->y:Ljava/io/FilenameFilter;

    .line 3
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array v1, v3, [Ljava/io/File;

    .line 4
    :cond_0
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lii5;->n()Ljava/io/File;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    new-array v1, v3, [Ljava/io/File;

    .line 7
    :cond_1
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0}, Lii5;->l()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v2}, Lii5;->r(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    return-object v0
.end method

.method public final s()[Ljava/io/File;
    .locals 2

    .line 1
    sget-object v0, Lii5;->x:Ljava/io/FilenameFilter;

    .line 2
    invoke-virtual {p0}, Lii5;->l()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lii5;->r(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 3
    sget-object v1, Lii5;->z:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public u(FLe45;)Le45;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Le45<",
            "Lpm5;",
            ">;)",
            "Le45<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lii5;->m:Ltl5;

    .line 2
    iget-object v1, v0, Ltl5;->a:Lul5$c;

    check-cast v1, Lii5$k;

    .line 3
    iget-object v1, v1, Lii5$k;->a:Lii5;

    invoke-virtual {v1}, Lii5;->q()[Ljava/io/File;

    move-result-object v1

    .line 4
    iget-object v0, v0, Ltl5;->a:Lul5$c;

    check-cast v0, Lii5$k;

    .line 5
    iget-object v0, v0, Lii5$k;->a:Lii5;

    .line 6
    invoke-virtual {v0}, Lii5;->m()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/io/File;

    :cond_0
    if-eqz v1, :cond_1

    .line 7
    array-length v1, v1

    if-lez v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    array-length v0, v0

    if-lez v0, :cond_2

    :goto_0
    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_3

    .line 9
    sget-object p1, Lah5;->a:Lah5;

    const-string p2, "No reports are available."

    invoke-virtual {p1, p2}, Lah5;->b(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lii5;->u:Lf45;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lf45;->b(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 11
    invoke-static {p1}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object p1

    return-object p1

    .line 12
    :cond_3
    sget-object v0, Lah5;->a:Lah5;

    const-string v1, "Unsent reports are available."

    invoke-virtual {v0, v1}, Lah5;->b(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lii5;->b:Lbj5;

    invoke-virtual {v1}, Lbj5;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Automatic data collection is enabled. Allowing upload."

    .line 14
    invoke-virtual {v0, v1}, Lah5;->b(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lii5;->u:Lf45;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lf45;->b(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v1, "Automatic data collection is disabled."

    .line 17
    invoke-virtual {v0, v1}, Lah5;->b(Ljava/lang/String;)V

    const-string v1, "Notifying that unsent reports are available."

    .line 18
    invoke-virtual {v0, v1}, Lah5;->b(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lii5;->u:Lf45;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lf45;->b(Ljava/lang/Object;)Z

    .line 20
    iget-object v1, p0, Lii5;->b:Lbj5;

    .line 21
    iget-object v2, v1, Lbj5;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 22
    :try_start_0
    iget-object v1, v1, Lbj5;->d:Lf45;

    .line 23
    iget-object v1, v1, Lf45;->a:Le55;

    .line 24
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    new-instance v2, Lpi5;

    invoke-direct {v2, p0}, Lpi5;-><init>(Lii5;)V

    .line 26
    invoke-virtual {v1, v2}, Le55;->p(Ld45;)Le45;

    move-result-object v1

    const-string v2, "Waiting for send/deleteUnsentReports to be called."

    .line 27
    invoke-virtual {v0, v2}, Lah5;->b(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lii5;->v:Lf45;

    .line 29
    iget-object v0, v0, Lf45;->a:Le55;

    .line 30
    sget-object v2, Lqj5;->a:Ljava/io/FilenameFilter;

    .line 31
    new-instance v2, Lf45;

    invoke-direct {v2}, Lf45;-><init>()V

    .line 32
    new-instance v3, Lrj5;

    invoke-direct {v3, v2}, Lrj5;-><init>(Lf45;)V

    .line 33
    invoke-virtual {v1, v3}, Le45;->h(Lw35;)Le45;

    .line 34
    invoke-virtual {v0, v3}, Le55;->h(Lw35;)Le45;

    .line 35
    iget-object v0, v2, Lf45;->a:Le55;

    .line 36
    :goto_1
    new-instance v1, Lii5$e;

    invoke-direct {v1, p0, p2, p1}, Lii5$e;-><init>(Lii5;Le45;F)V

    .line 37
    invoke-virtual {v0, v1}, Le45;->p(Ld45;)Le45;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 38
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final v(Lrl5;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lii5;->D:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    new-instance v5, Lii5$h;

    const-string v6, ".cls"

    invoke-static {p2, v4, v6}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lii5$h;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lii5;->l()Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v5}, Lii5;->r(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 4
    array-length v6, v5

    const-string v7, " data for session ID "

    if-nez v6, :cond_0

    .line 5
    sget-object v5, Lah5;->a:Lah5;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lah5;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_0
    sget-object v6, Lah5;->a:Lah5;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Collecting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lah5;->b(Ljava/lang/String;)V

    .line 7
    aget-object v4, v5, v2

    invoke-static {p1, v4}, Lii5;->z(Lrl5;Ljava/io/File;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final x(Lrl5;Ljava/lang/Thread;Ljava/lang/Throwable;JLjava/lang/String;Z)V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    .line 1
    new-instance v15, Len5;

    iget-object v4, v0, Lii5;->p:Ldn5;

    move-object/from16 v5, p3

    invoke-direct {v15, v5, v4}, Len5;-><init>(Ljava/lang/Throwable;Ldn5;)V

    .line 2
    iget-object v4, v0, Lii5;->a:Landroid/content/Context;

    .line 3
    invoke-static {v4}, Lth5;->a(Landroid/content/Context;)Lth5;

    move-result-object v5

    .line 4
    iget-object v14, v5, Lth5;->a:Ljava/lang/Float;

    .line 5
    invoke-virtual {v5}, Lth5;->b()I

    move-result v16

    .line 6
    invoke-static {v4}, Lvh5;->l(Landroid/content/Context;)Z

    move-result v13

    .line 7
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v12, v5, Landroid/content/res/Configuration;->orientation:I

    .line 8
    invoke-static {}, Lvh5;->o()J

    move-result-wide v5

    .line 9
    new-instance v7, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v7}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v8, "activity"

    .line 10
    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    invoke-virtual {v8, v7}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 11
    iget-wide v7, v7, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long v10, v5, v7

    .line 12
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lvh5;->a(Ljava/lang/String;)J

    move-result-wide v8

    .line 13
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lvh5;->h(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v7

    .line 14
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 15
    iget-object v5, v15, Len5;->c:[Ljava/lang/StackTraceElement;

    move-object/from16 p3, v5

    .line 16
    iget-object v5, v0, Lii5;->i:Lqh5;

    iget-object v5, v5, Lqh5;->b:Ljava/lang/String;

    move-object/from16 v17, v7

    .line 17
    iget-object v7, v0, Lii5;->g:Lgj5;

    .line 18
    iget-object v7, v7, Lgj5;->c:Ljava/lang/String;

    move-wide/from16 v18, v8

    if-eqz p7, :cond_1

    .line 19
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v20

    .line 20
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/Thread;

    .line 21
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/16 v22, 0x0

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 22
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Thread;

    aput-object v24, v9, v22

    .line 23
    iget-object v8, v0, Lii5;->p:Ldn5;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 p7, v9

    move-object/from16 v9, v23

    check-cast v9, [Ljava/lang/StackTraceElement;

    invoke-interface {v8, v9}, Ldn5;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v9, p7

    goto :goto_0

    :cond_0
    move-object/from16 p7, v9

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    new-array v8, v9, [Ljava/lang/Thread;

    move-object v9, v8

    :goto_1
    const-string v8, "com.crashlytics.CollectCustomKeys"

    move-object/from16 v20, v6

    const/4 v6, 0x1

    .line 24
    invoke-static {v4, v8, v6}, Lvh5;->i(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 25
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    goto :goto_2

    .line 26
    :cond_2
    iget-object v4, v0, Lii5;->d:Loj5;

    .line 27
    iget-object v4, v4, Loj5;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 28
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v8

    if-le v8, v6, :cond_3

    .line 29
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    move-object/from16 v22, v6

    goto :goto_3

    :cond_3
    :goto_2
    move-object/from16 v22, v4

    .line 30
    :goto_3
    iget-object v4, v0, Lii5;->l:Luj5;

    .line 31
    iget-object v4, v4, Luj5;->c:Ltj5;

    invoke-interface {v4}, Ltj5;->c()[B

    move-result-object v4

    .line 32
    sget-object v6, Lsl5;->a:Lpl5;

    .line 33
    invoke-static {v7}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v8

    const-string v7, ""

    if-nez v5, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    const-string v6, "-"

    .line 34
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v5

    move-object v6, v5

    :goto_4
    if-eqz v4, :cond_5

    .line 35
    array-length v5, v4

    move-object/from16 v23, v6

    .line 36
    new-array v6, v5, [B

    move-object/from16 v25, v7

    const/4 v7, 0x0

    .line 37
    invoke-static {v4, v7, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    new-instance v4, Lpl5;

    invoke-direct {v4, v6}, Lpl5;-><init>([B)V

    move-object v7, v4

    goto :goto_5

    :cond_5
    move-object/from16 v23, v6

    move-object/from16 v25, v7

    .line 39
    sget-object v4, Lah5;->a:Lah5;

    const-string v5, "No log data to include with this event."

    invoke-virtual {v4, v5}, Lah5;->b(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_5
    const/16 v4, 0xa

    const/4 v6, 0x2

    .line 40
    invoke-virtual {v1, v4, v6}, Lrl5;->r(II)V

    const/4 v5, 0x1

    .line 41
    invoke-static {v5, v2, v3}, Lrl5;->g(IJ)I

    move-result v4

    const/16 v21, 0x0

    add-int/lit8 v4, v4, 0x0

    .line 42
    invoke-static/range {p6 .. p6}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v5

    invoke-static {v6, v5}, Lrl5;->b(ILpl5;)I

    move-result v5

    add-int v26, v5, v4

    const/16 v27, 0x8

    move-object v4, v15

    move-object/from16 p7, p3

    const/16 v24, 0x1

    move-object/from16 v5, p2

    move-object/from16 p3, v20

    const/4 v0, 0x2

    move-object/from16 v6, p7

    move-object v0, v7

    move-object/from16 v20, v17

    move-object/from16 v17, v25

    move-object v7, v9

    move-wide/from16 v28, v18

    move-object/from16 v18, v8

    move-object/from16 v19, v15

    const/4 v15, 0x1

    move-object/from16 v8, p3

    move-object/from16 v21, v9

    move/from16 v9, v27

    move-wide/from16 v30, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v23

    move/from16 v24, v12

    move-object/from16 v12, v22

    move/from16 v27, v13

    move-object/from16 v13, v20

    move-object/from16 v32, v14

    move/from16 v14, v24

    .line 43
    invoke-static/range {v4 .. v14}, Lsl5;->f(Len5;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILpl5;Lpl5;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v4

    const/4 v14, 0x3

    .line 44
    invoke-static {v14}, Lrl5;->e(I)I

    move-result v5

    .line 45
    invoke-static {v4}, Lrl5;->d(I)I

    move-result v6

    add-int/2addr v6, v5

    add-int/2addr v6, v4

    add-int v4, v6, v26

    move-object/from16 v6, v32

    move/from16 v7, v16

    move/from16 v8, v27

    move/from16 v9, v24

    move-wide/from16 v10, v30

    move-wide/from16 v12, v28

    .line 46
    invoke-static/range {v6 .. v13}, Lsl5;->g(Ljava/lang/Float;IZIJJ)I

    move-result v5

    const/4 v13, 0x5

    .line 47
    invoke-static {v13}, Lrl5;->e(I)I

    move-result v6

    .line 48
    invoke-static {v5}, Lrl5;->d(I)I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v7, v5

    add-int/2addr v7, v4

    const/4 v12, 0x6

    if-eqz v0, :cond_6

    .line 49
    invoke-static {v15, v0}, Lrl5;->b(ILpl5;)I

    move-result v4

    .line 50
    invoke-static {v12}, Lrl5;->e(I)I

    move-result v5

    .line 51
    invoke-static {v4}, Lrl5;->d(I)I

    move-result v6

    add-int/2addr v6, v5

    add-int/2addr v6, v4

    add-int/2addr v7, v6

    .line 52
    :cond_6
    invoke-virtual {v1, v7}, Lrl5;->p(I)V

    .line 53
    invoke-virtual {v1, v15, v2, v3}, Lrl5;->t(IJ)V

    .line 54
    invoke-static/range {p6 .. p6}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lrl5;->m(ILpl5;)V

    .line 55
    invoke-virtual {v1, v14, v3}, Lrl5;->r(II)V

    const/16 v26, 0x8

    const/16 v7, 0x8

    move-object/from16 v2, v19

    move-object/from16 v3, p2

    move-object/from16 v4, p7

    move-object/from16 v5, v21

    move-object/from16 v6, p3

    move-object/from16 v8, v18

    move-object/from16 v9, v23

    move-object/from16 v10, v22

    move-object/from16 v11, v20

    move/from16 v12, v24

    .line 56
    invoke-static/range {v2 .. v12}, Lsl5;->f(Len5;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILpl5;Lpl5;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v2

    .line 57
    invoke-virtual {v1, v2}, Lrl5;->p(I)V

    const/4 v2, 0x2

    .line 58
    invoke-virtual {v1, v15, v2}, Lrl5;->r(II)V

    move-object/from16 v2, v19

    move/from16 v7, v26

    .line 59
    invoke-static/range {v2 .. v9}, Lsl5;->e(Len5;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILpl5;Lpl5;)I

    move-result v2

    .line 60
    invoke-virtual {v1, v2}, Lrl5;->p(I)V

    const/4 v2, 0x4

    .line 61
    invoke-static {v1, v3, v4, v2, v15}, Lsl5;->m(Lrl5;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    move-object/from16 v8, v21

    .line 62
    array-length v3, v8

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v3, :cond_7

    .line 63
    aget-object v4, v8, v9

    move-object/from16 v5, p3

    .line 64
    invoke-virtual {v5, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/StackTraceElement;

    const/4 v7, 0x0

    invoke-static {v1, v4, v6, v7, v7}, Lsl5;->m(Lrl5;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    const/16 v3, 0x8

    move-object/from16 v4, v19

    const/4 v5, 0x2

    .line 65
    invoke-static {v1, v4, v15, v3, v5}, Lsl5;->l(Lrl5;Len5;III)V

    .line 66
    invoke-virtual {v1, v14, v5}, Lrl5;->r(II)V

    .line 67
    invoke-static {}, Lsl5;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Lrl5;->p(I)V

    .line 68
    sget-object v3, Lsl5;->a:Lpl5;

    invoke-virtual {v1, v15, v3}, Lrl5;->m(ILpl5;)V

    .line 69
    invoke-virtual {v1, v5, v3}, Lrl5;->m(ILpl5;)V

    const-wide/16 v3, 0x0

    .line 70
    invoke-virtual {v1, v14, v3, v4}, Lrl5;->t(IJ)V

    .line 71
    invoke-virtual {v1, v2, v5}, Lrl5;->r(II)V

    move-object/from16 v6, v18

    move-object/from16 v8, v23

    .line 72
    invoke-static {v6, v8}, Lsl5;->a(Lpl5;Lpl5;)I

    move-result v9

    invoke-virtual {v1, v9}, Lrl5;->p(I)V

    .line 73
    invoke-virtual {v1, v15, v3, v4}, Lrl5;->t(IJ)V

    .line 74
    invoke-virtual {v1, v5, v3, v4}, Lrl5;->t(IJ)V

    .line 75
    invoke-virtual {v1, v14, v6}, Lrl5;->m(ILpl5;)V

    if-eqz v8, :cond_8

    .line 76
    invoke-virtual {v1, v2, v8}, Lrl5;->m(ILpl5;)V

    :cond_8
    if-eqz v22, :cond_a

    .line 77
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 78
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    const/4 v5, 0x2

    .line 79
    invoke-virtual {v1, v5, v5}, Lrl5;->r(II)V

    .line 80
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lsl5;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lrl5;->p(I)V

    .line 81
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v5

    invoke-virtual {v1, v15, v5}, Lrl5;->m(ILpl5;)V

    .line 82
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_9

    move-object/from16 v4, v17

    .line 83
    :cond_9
    invoke-static {v4}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v4}, Lrl5;->m(ILpl5;)V

    goto :goto_7

    :cond_a
    move-object/from16 v3, v20

    if-eqz v3, :cond_c

    .line 84
    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-eq v3, v4, :cond_b

    const/4 v9, 0x1

    goto :goto_8

    :cond_b
    const/4 v9, 0x0

    :goto_8
    invoke-virtual {v1, v14, v9}, Lrl5;->l(IZ)V

    :cond_c
    move/from16 v3, v24

    .line 85
    invoke-virtual {v1, v2, v3}, Lrl5;->s(II)V

    const/4 v4, 0x2

    .line 86
    invoke-virtual {v1, v13, v4}, Lrl5;->r(II)V

    move-object/from16 v6, v32

    move/from16 v7, v16

    move/from16 v8, v27

    move v9, v3

    move-wide/from16 v10, v30

    const/4 v4, 0x5

    move-wide/from16 v12, v28

    .line 87
    invoke-static/range {v6 .. v13}, Lsl5;->g(Ljava/lang/Float;IZIJJ)I

    move-result v5

    .line 88
    invoke-virtual {v1, v5}, Lrl5;->p(I)V

    if-eqz v32, :cond_d

    .line 89
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/16 v6, 0xd

    .line 90
    invoke-virtual {v1, v6}, Lrl5;->p(I)V

    .line 91
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    and-int/lit16 v6, v5, 0xff

    .line 92
    invoke-virtual {v1, v6}, Lrl5;->o(I)V

    shr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    .line 93
    invoke-virtual {v1, v6}, Lrl5;->o(I)V

    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    .line 94
    invoke-virtual {v1, v6}, Lrl5;->o(I)V

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    .line 95
    invoke-virtual {v1, v5}, Lrl5;->o(I)V

    :cond_d
    const/16 v5, 0x10

    .line 96
    invoke-virtual {v1, v5}, Lrl5;->p(I)V

    shl-int/lit8 v5, v16, 0x1

    shr-int/lit8 v6, v16, 0x1f

    xor-int/2addr v5, v6

    .line 97
    invoke-virtual {v1, v5}, Lrl5;->p(I)V

    move/from16 v5, v27

    .line 98
    invoke-virtual {v1, v14, v5}, Lrl5;->l(IZ)V

    .line 99
    invoke-virtual {v1, v2, v3}, Lrl5;->s(II)V

    move-wide/from16 v5, v30

    .line 100
    invoke-virtual {v1, v4, v5, v6}, Lrl5;->t(IJ)V

    move-wide/from16 v2, v28

    const/4 v4, 0x6

    .line 101
    invoke-virtual {v1, v4, v2, v3}, Lrl5;->t(IJ)V

    if-eqz v0, :cond_e

    const/4 v2, 0x2

    .line 102
    invoke-virtual {v1, v4, v2}, Lrl5;->r(II)V

    .line 103
    invoke-static {v15, v0}, Lrl5;->b(ILpl5;)I

    move-result v2

    .line 104
    invoke-virtual {v1, v2}, Lrl5;->p(I)V

    .line 105
    invoke-virtual {v1, v15, v0}, Lrl5;->m(ILpl5;)V

    :cond_e
    move-object/from16 v0, p0

    .line 106
    iget-object v1, v0, Lii5;->l:Luj5;

    .line 107
    iget-object v1, v1, Luj5;->c:Ltj5;

    invoke-interface {v1}, Ltj5;->d()V

    return-void
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;Lii5$g;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Failed to close session "

    const-string v1, "Failed to flush to session "

    const-string v2, " file."

    const/4 v3, 0x0

    .line 1
    :try_start_0
    new-instance v4, Lql5;

    invoke-virtual {p0}, Lii5;->l()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v5, p1}, Lql5;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    invoke-static {v4}, Lrl5;->i(Ljava/io/OutputStream;)Lrl5;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    invoke-interface {p3, p1}, Lii5$g;->a(Lrl5;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lvh5;->g(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lvh5;->c(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p3

    move-object v3, p1

    goto :goto_0

    :catchall_1
    move-exception p3

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object p3, p1

    move-object v4, v3

    .line 6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lvh5;->g(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lvh5;->c(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 8
    throw p3
.end method
