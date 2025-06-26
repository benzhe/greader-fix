.class public final synthetic Lwt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv$a;


# instance fields
.field public final a:Lxt;


# direct methods
.method public constructor <init>(Lxt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwt;->a:Lxt;

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lwt;->a:Lxt;

    .line 1
    iget-object v1, v0, Lxt;->b:Lcu;

    invoke-interface {v1}, Lcu;->M()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lds;

    .line 2
    iget-object v3, v0, Lxt;->c:Lzt;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lzt;->a(Lds;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
