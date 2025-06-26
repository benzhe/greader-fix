.class public Loh5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnh5;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lti5;)V
    .locals 1

    .line 1
    sget-object p1, Lah5;->a:Lah5;

    const-string v0, "Could not register handler for breadcrumbs events."

    invoke-virtual {p1, v0}, Lah5;->b(Ljava/lang/String;)V

    return-void
.end method
