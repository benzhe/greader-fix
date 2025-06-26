.class public Ljl;
.super Lhl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhl<",
        "Lcl;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NetworkMeteredCtrlr"

    .line 1
    invoke-static {v0}, Lvj;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljl;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lxm;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ltl;->a(Landroid/content/Context;Lxm;)Ltl;

    move-result-object p1

    .line 2
    iget-object p1, p1, Ltl;->c:Lrl;

    .line 3
    invoke-direct {p0, p1}, Lhl;-><init>(Lql;)V

    return-void
.end method


# virtual methods
.method public b(Ldm;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Ldm;->j:Lqj;

    .line 2
    iget-object p1, p1, Lqj;->a:Lwj;

    .line 3
    sget-object v0, Lwj;->i:Lwj;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    check-cast p1, Lcl;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    .line 3
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v0

    sget-object v2, Ljl;->e:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Throwable;

    const-string v4, "Metered network constraint is not supported before API 26, only checking for connected state."

    invoke-virtual {v0, v2, v4, v3}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    iget-boolean p1, p1, Lcl;->a:Z

    xor-int/2addr p1, v1

    goto :goto_1

    .line 5
    :cond_0
    iget-boolean v0, p1, Lcl;->a:Z

    if-eqz v0, :cond_2

    .line 6
    iget-boolean p1, p1, Lcl;->c:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    move p1, v1

    :goto_1
    return p1
.end method
