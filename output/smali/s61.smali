.class public final synthetic Ls61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lrv2;


# direct methods
.method public constructor <init>(Lrv2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls61;->a:Lrv2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 1

    .line 1
    iget-object v0, p0, Ls61;->a:Lrv2;

    check-cast p1, Ljava/lang/Throwable;

    .line 2
    invoke-interface {v0, p1}, Lrv2;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    return-object p1
.end method
