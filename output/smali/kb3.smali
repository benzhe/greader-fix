.class public final Lkb3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmb3<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field public volatile a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile b:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkb3;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmb3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lkb3;->c:Ljava/lang/Object;

    iput-object v0, p0, Lkb3;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lkb3;->a:Lmb3;

    return-void
.end method

.method public static a(Lmb3;)Lmb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lmb3<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lmb3<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lkb3;

    if-nez v0, :cond_1

    instance-of v0, p0, Ldb3;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lkb3;

    invoke-direct {v0, p0}, Lkb3;-><init>(Lmb3;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkb3;->b:Ljava/lang/Object;

    .line 2
    sget-object v1, Lkb3;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lkb3;->a:Lmb3;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lkb3;->b:Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lkb3;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lkb3;->a:Lmb3;

    :cond_1
    :goto_0
    return-object v0
.end method
