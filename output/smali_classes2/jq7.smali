.class public final Ljq7;
.super Lcp7;
.source "SourceFile"


# static fields
.field public static final g:Ljq7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljq7;

    invoke-direct {v0}, Ljq7;-><init>()V

    sput-object v0, Ljq7;->g:Ljq7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcp7;-><init>()V

    return-void
.end method


# virtual methods
.method public t(Lrk7;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    sget-object p2, Lkq7;->f:Lkq7$a;

    invoke-interface {p1, p2}, Lrk7;->c(Lrk7$b;)Lrk7$a;

    move-result-object p1

    check-cast p1, Lkq7;

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Unconfined"

    return-object v0
.end method

.method public w(Lrk7;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
