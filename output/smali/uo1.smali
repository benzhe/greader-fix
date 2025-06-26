.class public final Luo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkb0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Lkb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkb0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lio1;


# direct methods
.method public constructor <init>(Lio1;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lkb0;Lno1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luo1;->d:Lio1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Luo1;->a:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p3, p0, Luo1;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Luo1;->c:Lkb0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
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
    iget-object p1, p0, Luo1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Luo1;->d:Lio1;

    iget-object p2, p0, Luo1;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lio1;->d(Ljava/lang/String;Lkb0;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Luo1;->c:Lkb0;

    invoke-interface {v0, p1, p2}, Lkb0;->a(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
