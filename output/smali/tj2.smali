.class public final synthetic Ltj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lei2;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltj2;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Ltj2;->a:I

    check-cast p1, Lpn0;

    .line 2
    invoke-interface {p1, v0}, Lpn0;->onRewardedVideoAdFailedToLoad(I)V

    return-void
.end method
