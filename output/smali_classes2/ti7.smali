.class public final Lti7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltc7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltc7<",
        "Lic7;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lic7;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lic7;

    .line 2
    iput-object p1, p0, Lti7;->e:Lic7;

    return-void
.end method
