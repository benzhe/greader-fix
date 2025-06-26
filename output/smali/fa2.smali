.class public final synthetic Lfa2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnd2;


# instance fields
.field public final a:Lga2;


# direct methods
.method public constructor <init>(Lga2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfa2;->a:Lga2;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lfa2;->a:Lga2;

    check-cast p1, Landroid/os/Bundle;

    .line 1
    iget-object v0, v0, Lga2;->a:Lvh2;

    .line 2
    iget-object v0, v0, Lvh2;->a:Ljava/lang/String;

    const-string v1, "key_schema"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
