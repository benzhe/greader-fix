.class public final Llh1;
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
.field public final a:Lrg1;


# direct methods
.method public constructor <init>(Lrg1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Llh1;->a:Lrg1;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Llh1;->a:Lrg1;

    .line 2
    iget-object v0, v0, Lrg1;->b:Lxw0;

    return-object v0
.end method
