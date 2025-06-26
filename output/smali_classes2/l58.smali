.class public final Ll58;
.super Lj58;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final g:Ll58;

.field public static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ll58;

    invoke-direct {v0}, Ll58;-><init>()V

    sput-object v0, Ll58;->g:Ll58;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ll58;->h:Ljava/util/HashMap;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Ll58;->i:Ljava/util/HashMap;

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Ll58;->j:Ljava/util/HashMap;

    const-string v3, "BH"

    const-string v4, "HE"

    .line 5
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "en"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "B.H."

    const-string v3, "H.E."

    .line 6
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Before Hijrah"

    const-string v1, "Hijrah Era"

    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj58;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Ll58;->g:Ll58;

    return-object v0
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .locals 1

    const-string v0, "islamic-umalqura"

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    const-string v0, "Hijrah-umalqura"

    return-object v0
.end method

.method public I(Lu68;)Lf58;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu68;",
            ")",
            "Lf58<",
            "Lm58;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lj58;->I(Lu68;)Lf58;

    move-result-object p1

    return-object p1
.end method

.method public L(Lo48;Lz48;)Lh58;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo48;",
            "Lz48;",
            ")",
            "Lh58<",
            "Lm58;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Li58;->X(Lj58;Lo48;Lz48;)Li58;

    move-result-object p1

    return-object p1
.end method

.method public k(Lu68;)Le58;
    .locals 2

    .line 1
    instance-of v0, p1, Lm58;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lm58;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lq68;->C:Lq68;

    invoke-interface {p1, v0}, Lu68;->D(Ly68;)J

    move-result-wide v0

    .line 4
    new-instance p1, Lm58;

    invoke-direct {p1, v0, v1}, Lm58;-><init>(J)V

    :goto_0
    return-object p1
.end method

.method public x(I)Lk58;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    sget-object p1, Ln58;->f:Ln58;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ll48;

    const-string v0, "invalid Hijrah era"

    invoke-direct {p1, v0}, Ll48;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    sget-object p1, Ln58;->e:Ln58;

    :goto_0
    return-object p1
.end method
