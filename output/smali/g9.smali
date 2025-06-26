.class public Lg9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lj9$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lf9;

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf9;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg9;->e:Landroid/content/Context;

    iput-object p2, p0, Lg9;->f:Lf9;

    iput p3, p0, Lg9;->g:I

    iput-object p4, p0, Lg9;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg9;->e:Landroid/content/Context;

    iget-object v1, p0, Lg9;->f:Lf9;

    iget v2, p0, Lg9;->g:I

    invoke-static {v0, v1, v2}, Lj9;->b(Landroid/content/Context;Lf9;I)Lj9$d;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lj9$d;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 3
    sget-object v2, Lj9;->a:Lk4;

    iget-object v3, p0, Lg9;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lk4;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
