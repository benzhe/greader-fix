.class public final Lh51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lxw0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lq41;


# direct methods
.method public constructor <init>(Lq41;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh51;->a:Lq41;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lh51;->a:Lq41;

    .line 2
    iget-object v0, v0, Lq41;->d:Lxw0;

    return-object v0
.end method
