.class public final Lq57;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq57$a;
    }
.end annotation


# instance fields
.field public final a:Ld97;

.field public final b:Lp77;

.field public final c:Lp77;

.field public final d:Lp77;


# direct methods
.method public constructor <init>(Ld97;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ln56;->G()Lp77;

    move-result-object v0

    iput-object v0, p0, Lq57;->b:Lp77;

    .line 3
    invoke-static {}, Ln56;->G()Lp77;

    move-result-object v0

    iput-object v0, p0, Lq57;->c:Lp77;

    .line 4
    invoke-static {}, Ln56;->G()Lp77;

    move-result-object v0

    iput-object v0, p0, Lq57;->d:Lp77;

    .line 5
    iput-object p1, p0, Lq57;->a:Ld97;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lq57;->c:Lp77;

    invoke-interface {p1, v0, v1}, Lp77;->a(J)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lq57;->d:Lp77;

    invoke-interface {p1, v0, v1}, Lp77;->a(J)V

    :goto_0
    return-void
.end method
