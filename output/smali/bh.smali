.class public Lbh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbh$a;
    }
.end annotation


# instance fields
.field public final a:Lbh$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lxg$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lah;

    .line 2
    new-instance v1, Lbh$a;

    invoke-direct {v1, p1, p2, v0, p3}, Lbh$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Lah;Lxg$a;)V

    .line 3
    iput-object v1, p0, Lbh;->a:Lbh$a;

    return-void
.end method


# virtual methods
.method public a()Lwg;
    .locals 1

    .line 1
    iget-object v0, p0, Lbh;->a:Lbh$a;

    invoke-virtual {v0}, Lbh$a;->c()Lwg;

    move-result-object v0

    return-object v0
.end method
