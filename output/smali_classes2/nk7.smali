.class public abstract Lnk7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrk7$a;


# instance fields
.field public final e:Lrk7$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrk7$b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrk7$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrk7$b<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnk7;->e:Lrk7$b;

    return-void
.end method


# virtual methods
.method public c(Lrk7$b;)Lrk7$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lrk7$a;",
            ">(",
            "Lrk7$b<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Ln56;->A0(Lrk7$a;Lrk7$b;)Lrk7$a;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Lrk7$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrk7$b<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnk7;->e:Lrk7$b;

    return-object v0
.end method

.method public m(Ljava/lang/Object;Ltl7;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ltl7<",
            "-TR;-",
            "Lrk7$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Ln56;->x0(Lrk7$a;Ljava/lang/Object;Ltl7;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
