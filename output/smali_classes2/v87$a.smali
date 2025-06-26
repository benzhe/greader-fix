.class public final Lv87$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw67$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv87;->a(Lj47;Lx27;Ly27;)La37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lj47;

.field public final synthetic b:Lv87;


# direct methods
.method public constructor <init>(Lv87;Lj47;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lv87$a;->b:Lv87;

    iput-object p2, p0, Lv87$a;->a:Lj47;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lw67;
    .locals 4

    .line 1
    iget-object v0, p0, Lv87$a;->b:Lv87;

    .line 2
    iget-boolean v0, v0, Lv87;->c:Z

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lw67;->d:Lw67;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lv87$a;->b:Lv87;

    iget-object v1, p0, Lv87$a;->a:Lj47;

    .line 5
    invoke-virtual {v0, v1}, Lv87;->b(Lj47;)Lb87$a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    sget-object v0, Lw67;->d:Lw67;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lb87$a;->f:Lw67;

    .line 7
    :goto_0
    sget-object v1, Lw67;->d:Lw67;

    .line 8
    invoke-virtual {v0, v1}, Lw67;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lv87$a;->b:Lv87;

    iget-object v2, p0, Lv87$a;->a:Lj47;

    .line 9
    invoke-virtual {v1, v2}, Lv87;->c(Lj47;)Ls87;

    move-result-object v1

    sget-object v2, Ls87;->f:Ls87;

    invoke-virtual {v1, v2}, Ls87;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    iget-object v2, p0, Lv87$a;->a:Lj47;

    const-string v3, "Can not apply both retry and hedging policy for the method \'%s\'"

    .line 10
    invoke-static {v1, v3, v2}, Lsd5;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
