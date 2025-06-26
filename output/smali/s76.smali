.class public final Ls76;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lq66;",
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


# direct methods
.method public constructor <init>(Lm76;Ljj7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm76;",
            "Ljj7<",
            "Lo66;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls76;->a:Lm76;

    .line 3
    iput-object p2, p0, Ls76;->b:Ljj7;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls76;->a:Lm76;

    iget-object v1, p0, Ls76;->b:Ljj7;

    invoke-interface {v1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo66;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lq66;

    invoke-direct {v0, v1}, Lq66;-><init>(Lo66;)V

    return-object v0
.end method
