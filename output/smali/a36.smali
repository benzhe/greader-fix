.class public final synthetic La36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# instance fields
.field public final e:Lf45;


# direct methods
.method public constructor <init>(Lf45;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La36;->e:Lf45;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, La36;->e:Lf45;

    check-cast p1, Ljava/lang/Throwable;

    .line 1
    instance-of v1, p1, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Exception;

    .line 3
    iget-object v0, v0, Lf45;->a:Le55;

    invoke-virtual {v0, p1}, Le55;->r(Ljava/lang/Exception;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, v0, Lf45;->a:Le55;

    invoke-virtual {p1, v1}, Le55;->r(Ljava/lang/Exception;)V

    .line 6
    :goto_0
    sget-object p1, Lbg7;->e:Lbg7;

    return-object p1
.end method
