.class public final Lt57$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll37$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt57;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public a:La37$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La37$a<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lt57;


# direct methods
.method public constructor <init>(Lt57;La37$a;Lt57$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt57$d;->b:Lt57;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lt57$d;->a:La37$a;

    return-void
.end method


# virtual methods
.method public a(Ll37;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ll37;->k()Lm37;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ll37;->k()Lm37;

    move-result-object v0

    invoke-virtual {v0}, Lm37;->l()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ln56;->k2(Ll37;)Lx47;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lt57$d;->b:Lt57;

    iget-object v1, p0, Lt57$d;->a:La37$a;

    invoke-static {v0, p1, v1}, Lt57;->f(Lt57;Lx47;La37$a;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lt57$d;->b:Lt57;

    .line 5
    iget-object v0, v0, Lt57;->i:Ly57;

    .line 6
    invoke-static {p1}, Ln56;->k2(Ll37;)Lx47;

    move-result-object p1

    invoke-interface {v0, p1}, Ly57;->f(Lx47;)V

    :goto_1
    return-void
.end method
