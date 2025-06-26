.class public final synthetic Lvf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvs2;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lkb0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkb0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvf0;->a:Ljava/lang/String;

    iput-object p2, p0, Lvf0;->b:Lkb0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lvf0;->a:Ljava/lang/String;

    iget-object v1, p0, Lvf0;->b:Lkb0;

    check-cast p1, Lwe0;

    .line 2
    invoke-interface {p1, v0, v1}, Lwe0;->n(Ljava/lang/String;Lkb0;)V

    return-object p1
.end method
