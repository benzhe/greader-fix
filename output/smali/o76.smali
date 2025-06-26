.class public final Lo76;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lr26;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lm76;

.field public final b:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lo66;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lno5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm76;Ljj7;Ljj7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm76;",
            "Ljj7<",
            "Lo66;",
            ">;",
            "Ljj7<",
            "Lno5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo76;->a:Lm76;

    .line 3
    iput-object p2, p0, Lo76;->b:Ljj7;

    .line 4
    iput-object p3, p0, Lo76;->c:Ljj7;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lo76;->a:Lm76;

    iget-object v1, p0, Lo76;->b:Ljj7;

    invoke-interface {v1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo66;

    iget-object v2, p0, Lo76;->c:Ljj7;

    invoke-interface {v2}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lno5;

    .line 2
    new-instance v3, Lr26;

    iget-object v0, v0, Lm76;->a:Lpe5;

    invoke-direct {v3, v0, v1, v2}, Lr26;-><init>(Lpe5;Lo66;Lno5;)V

    return-object v3
.end method
