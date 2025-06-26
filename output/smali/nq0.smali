.class public final synthetic Lnq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lcq0;


# direct methods
.method public constructor <init>(Lcq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnq0;->e:Lcq0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lnq0;->e:Lcq0;

    .line 1
    sget-object v1, Liq0;->a:Lcq0$b;

    const/4 v2, 0x0

    const-string v3, "getAppInstanceId"

    invoke-virtual {v0, v3, v2, v1}, Lcq0;->b(Ljava/lang/String;Ljava/lang/Object;Lcq0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
