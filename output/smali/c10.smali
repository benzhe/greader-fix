.class public final Lc10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li00$b;


# instance fields
.field public final synthetic a:Lqy$b;


# direct methods
.method public constructor <init>(Lqy$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc10;->a:Lqy$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g0(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc10;->a:Lqy$b;

    invoke-interface {v0, p1}, Lqy$b;->g0(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
