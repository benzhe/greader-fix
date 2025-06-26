.class public final Lo58;
.super Lj58;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final g:Lo58;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo58;

    invoke-direct {v0}, Lo58;-><init>()V

    sput-object v0, Lo58;->g:Lo58;

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
    sget-object v0, Lo58;->g:Lo58;

    return-object v0
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .locals 1

    const-string v0, "iso8601"

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    const-string v0, "ISO"

    return-object v0
.end method

.method public I(Lu68;)Lf58;
    .locals 0

    .line 1
    invoke-static {p1}, Lq48;->V(Lu68;)Lq48;

    move-result-object p1

    return-object p1
.end method

.method public L(Lo48;Lz48;)Lh58;
    .locals 2

    const-string v0, "instant"

    .line 1
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    .line 2
    invoke-static {p2, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-wide v0, p1, Lo48;->e:J

    .line 4
    iget p1, p1, Lo48;->f:I

    .line 5
    invoke-static {v0, v1, p1, p2}, Lc58;->W(JILz48;)Lc58;

    move-result-object p1

    return-object p1
.end method

.method public M(J)Z
    .locals 5

    const-wide/16 v0, 0x3

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide/16 v0, 0x64

    .line 1
    rem-long v0, p1, v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x190

    rem-long/2addr p1, v0

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k(Lu68;)Le58;
    .locals 0

    .line 1
    invoke-static {p1}, Lp48;->V(Lu68;)Lp48;

    move-result-object p1

    return-object p1
.end method

.method public x(I)Lk58;
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    sget-object p1, Lp58;->f:Lp58;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ll48;

    const-string v1, "Invalid era: "

    invoke-static {v1, p1}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ll48;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    sget-object p1, Lp58;->e:Lp58;

    :goto_0
    return-object p1
.end method
