.class public final Ll76;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg26;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lj76;

.field public final b:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lbf5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj76;Ljj7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj76;",
            "Ljj7<",
            "Lbf5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll76;->a:Lj76;

    .line 3
    iput-object p2, p0, Ll76;->b:Ljj7;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ll76;->a:Lj76;

    iget-object v1, p0, Ll76;->b:Ljj7;

    invoke-interface {v1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbf5;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lg26;

    invoke-direct {v0, v1}, Lg26;-><init>(Lbf5;)V

    return-object v0
.end method
