.class public final synthetic Lpf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbt0;


# instance fields
.field public final a:Lxs0;


# direct methods
.method public constructor <init>(Lxs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpf0;->a:Lxs0;

    return-void
.end method


# virtual methods
.method public final zzg(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lpf0;->a:Lxs0;

    check-cast p1, Lwe0;

    .line 2
    invoke-virtual {v0, p1}, Lxs0;->a(Ljava/lang/Object;)Z

    return-void
.end method
