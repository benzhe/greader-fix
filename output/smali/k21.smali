.class public final Lk21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkb0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll21;


# direct methods
.method public constructor <init>(Ll21;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk21;->a:Ll21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lk21;->a:Ll21;

    invoke-static {p1, p2}, Ll21;->b(Ll21;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lk21;->a:Ll21;

    .line 3
    iget-object p1, p1, Ll21;->c:Ljava/util/concurrent/Executor;

    .line 4
    new-instance p2, Ln21;

    invoke-direct {p2, p0}, Ln21;-><init>(Lk21;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
