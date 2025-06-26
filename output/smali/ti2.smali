.class public final Lti2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lli2<",
        "Lgp1;",
        "Ldp1;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lmm2;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lgn2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Landroid/content/Context;",
            ">;",
            "Lmb3<",
            "Lmm2;",
            ">;",
            "Lmb3<",
            "Lgn2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lti2;->a:Lmb3;

    .line 3
    iput-object p2, p0, Lti2;->b:Lmb3;

    .line 4
    iput-object p3, p0, Lti2;->c:Lmb3;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lti2;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lti2;->b:Lmb3;

    invoke-interface {v1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmm2;

    iget-object v2, p0, Lti2;->c:Lmb3;

    invoke-interface {v2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgn2;

    .line 2
    sget-object v3, Ly40;->S3:Lo40;

    .line 3
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 6
    new-instance v3, Loh2;

    invoke-direct {v3}, Loh2;-><init>()V

    .line 7
    sget-object v4, Lym2;->e:Lym2;

    new-instance v5, Lth2;

    invoke-direct {v5, v3}, Lth2;-><init>(Lli2;)V

    .line 8
    invoke-virtual {v2, v4, v0, v1, v5}, Lgn2;->a(Lym2;Landroid/content/Context;Lmm2;Lth2;)Lfn2;

    move-result-object v0

    .line 9
    new-instance v1, Lph2;

    new-instance v2, Lgi2;

    new-instance v3, Lci2;

    invoke-direct {v3}, Lci2;-><init>()V

    invoke-direct {v2, v3}, Lgi2;-><init>(Lli2;)V

    new-instance v3, Lyh2;

    iget-object v4, v0, Lfn2;->a:Lsm2;

    sget-object v5, Lms0;->a:Lzv2;

    invoke-direct {v3, v4, v5}, Lyh2;-><init>(Lsm2;Ljava/util/concurrent/Executor;)V

    iget-object v0, v0, Lfn2;->b:Lkn2;

    invoke-direct {v1, v2, v3, v0, v5}, Lph2;-><init>(Lli2;Lli2;Lkn2;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lci2;

    invoke-direct {v1}, Lci2;-><init>()V

    :goto_0
    return-object v1
.end method
