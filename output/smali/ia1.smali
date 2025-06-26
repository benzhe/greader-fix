.class public final synthetic Lia1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd1;


# instance fields
.field public final a:Lvh1;


# direct methods
.method public constructor <init>(Lvh1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lia1;->a:Lvh1;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lia1;->a:Lvh1;

    check-cast p1, Lha1;

    .line 2
    invoke-interface {p1, v0}, Lha1;->a0(Lvh1;)V

    return-void
.end method
