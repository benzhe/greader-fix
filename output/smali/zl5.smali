.class public Lzl5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lam5;


# instance fields
.field public final a:Lbm5;

.field public final b:Lcm5;


# direct methods
.method public constructor <init>(Lbm5;Lcm5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzl5;->a:Lbm5;

    .line 3
    iput-object p2, p0, Lzl5;->b:Lcm5;

    return-void
.end method


# virtual methods
.method public a(Lvl5;Z)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lvl5;->c:Lxl5;

    invoke-interface {v0}, Lxl5;->getType()Lxl5$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lzl5;->b:Lcm5;

    invoke-virtual {v0, p1, p2}, Lcm5;->a(Lvl5;Z)Z

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lzl5;->a:Lbm5;

    invoke-virtual {v0, p1, p2}, Lbm5;->a(Lvl5;Z)Z

    return v1
.end method
