.class public final synthetic Lpc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd1;


# instance fields
.field public final a:Lhl2;


# direct methods
.method public constructor <init>(Lhl2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpc1;->a:Lhl2;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lpc1;->a:Lhl2;

    check-cast p1, Lsc1;

    .line 2
    invoke-interface {p1, v0}, Lsc1;->M(Lhl2;)V

    return-void
.end method
