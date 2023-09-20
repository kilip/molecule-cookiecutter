def test_bake_project(cookies):
    result = cookies.bake(extra_context={'role_name': 'test'})

    assert result.exit_code == 0
    assert result.exception is None
    assert result.project.basename == 'test'
    assert result.project.isdir()

    #readme_file = result.project.join('README.rst')
    #readme_lines = readme_file.readlines(cr=False)
    #assert readme_lines == ['helloworld', '=====']

