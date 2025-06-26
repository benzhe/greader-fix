.class public final Lfi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lus3;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lgi1;


# direct methods
.method public constructor <init>(Lgi1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfi1;->a:Lgi1;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfi1;->a:Lgi1;

    .line 2
    iget-object v0, v0, Lgi1;->b:Lus3;

    return-object v0
.end method
