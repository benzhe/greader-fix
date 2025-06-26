.class public Leh5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld45;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld45<",
        "Ljava/lang/Void;",
        "Lpm5;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljm5;


# direct methods
.method public constructor <init>(Lgh5;Ljm5;)V
    .locals 0

    .line 1
    iput-object p2, p0, Leh5;->a:Ljm5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Le45;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Leh5;->a:Ljm5;

    invoke-virtual {p1}, Ljm5;->a()Le45;

    move-result-object p1

    return-object p1
.end method
