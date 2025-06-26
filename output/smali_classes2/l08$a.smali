.class public final Ll08$a;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lel7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll08;->a()Ll08;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lel7<",
        "Lyj7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ll08;


# direct methods
.method public constructor <init>(Ll08;)V
    .locals 0

    iput-object p1, p0, Ll08$a;->e:Ll08;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ll08$a;->e:Ll08;

    .line 2
    iget-object v0, v0, Ll08;->a:Lk08;

    .line 3
    invoke-virtual {v0}, Lk08;->a()V

    .line 4
    sget-object v0, Lyj7;->a:Lyj7;

    return-object v0
.end method
