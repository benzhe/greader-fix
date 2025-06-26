.class public final Ln76;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lh26;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lm76;

.field public final b:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Ln36;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lw56;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm76;Ljj7;Ljj7;Ljj7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm76;",
            "Ljj7<",
            "Ln36;",
            ">;",
            "Ljj7<",
            "Landroid/app/Application;",
            ">;",
            "Ljj7<",
            "Lw56;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln76;->a:Lm76;

    .line 3
    iput-object p2, p0, Ln76;->b:Ljj7;

    .line 4
    iput-object p3, p0, Ln76;->c:Ljj7;

    .line 5
    iput-object p4, p0, Ln76;->d:Ljj7;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Ln76;->a:Lm76;

    iget-object v1, p0, Ln76;->b:Ljj7;

    .line 2
    sget-object v2, Liz5;->c:Ljava/lang/Object;

    .line 3
    instance-of v2, v1, Lhz5;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lhz5;

    move-object v4, v1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Liz5;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-direct {v2, v1}, Liz5;-><init>(Ljj7;)V

    move-object v4, v2

    .line 8
    :goto_0
    iget-object v1, p0, Ln76;->c:Ljj7;

    invoke-interface {v1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/app/Application;

    iget-object v1, p0, Ln76;->d:Ljj7;

    invoke-interface {v1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lw56;

    .line 9
    new-instance v1, Lh26;

    iget-object v5, v0, Lm76;->a:Lpe5;

    iget-object v7, v0, Lm76;->c:Lz86;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lh26;-><init>(Lhz5;Lpe5;Landroid/app/Application;Lz86;Lw56;)V

    return-object v1
.end method
