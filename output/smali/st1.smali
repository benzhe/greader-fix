.class public final synthetic Lst1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lmt1;


# direct methods
.method public constructor <init>(Lmt1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lst1;->e:Lmt1;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lst1;->e:Lmt1;

    .line 1
    iget-object v0, v0, Lmt1;->e:Lxs0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lxs0;->a(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return-object v0
.end method
