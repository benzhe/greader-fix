.class public Lve6$a;
.super Lde6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lve6;->b(Lod6;Ldg6;)Lde6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde6<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lde6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde6<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lod6;

.field public final synthetic e:Ldg6;

.field public final synthetic f:Lve6;


# direct methods
.method public constructor <init>(Lve6;ZZLod6;Ldg6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lve6$a;->f:Lve6;

    iput-boolean p2, p0, Lve6$a;->b:Z

    iput-boolean p3, p0, Lve6$a;->c:Z

    iput-object p4, p0, Lve6$a;->d:Lod6;

    iput-object p5, p0, Lve6$a;->e:Ldg6;

    invoke-direct {p0}, Lde6;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leg6;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg6;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lve6$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Leg6;->g0()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lve6$a;->a:Lde6;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lve6$a;->d:Lod6;

    iget-object v1, p0, Lve6$a;->f:Lve6;

    iget-object v2, p0, Lve6$a;->e:Ldg6;

    invoke-virtual {v0, v1, v2}, Lod6;->e(Lee6;Ldg6;)Lde6;

    move-result-object v0

    iput-object v0, p0, Lve6$a;->a:Lde6;

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Lde6;->a(Leg6;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lgg6;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg6;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lve6$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lgg6;->m()Lgg6;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lve6$a;->a:Lde6;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lve6$a;->d:Lod6;

    iget-object v1, p0, Lve6$a;->f:Lve6;

    iget-object v2, p0, Lve6$a;->e:Ldg6;

    invoke-virtual {v0, v1, v2}, Lod6;->e(Lee6;Ldg6;)Lde6;

    move-result-object v0

    iput-object v0, p0, Lve6$a;->a:Lde6;

    .line 5
    :goto_0
    invoke-virtual {v0, p1, p2}, Lde6;->b(Lgg6;Ljava/lang/Object;)V

    return-void
.end method
